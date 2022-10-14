
__author__ = ["RAOURAOUA Nessim", "LEMAIRE Guillaume"]

import argparse
import parasail
from seq import Genome
from Bio import SeqIO
import gzip


def arg_parsing():
    """Enable argument parsing for the script."""
    parse = argparse.ArgumentParser()
    parse.add_argument("-g", "--genome", required=True,
                       help="path to a fasta file containing the reference genome")
    parse.add_argument("-r", "--reads", required=True, nargs="*", type=list,
                       help="path to one or more FASTQ.gz files containing reads to analyse")
    parse.add_argument("-o", "--out", required=True,
                       help="output file name")
    parse.add_argument("-k", default=11, type=int,
                       help="size of the generated seeds")
    parse.add_argument("-c", "--cigar", action="store_true",
                       help="gives the alignment's cigar motif")
    parse.add_argument("-i", "--identification", default="", nargs="*",
                       help="identification of read")
    return parse


def parse_genome(my_file):
    """Store a fasta file with unique or several sequence in a list of sequences.

    :param my_file: (str)
        path to the genome fasta file
    :return: (list)
        a list with sequences

    :raise SyntaxError: Give a file with extension 'fa', 'fna', 'ffn', 'faa', 'frn', 'fas' or 'fasta'
    """
    if my_file.split('.')[-1] not in {'fa', 'fna', 'ffn', 'faa', 'frn', 'fas', 'fasta'}:
        raise SyntaxError("Give a file at fasta format !")
    with open(my_file, 'r') as file:
        lines = file.readlines()
    new, sequences = {}, []
    for line in lines:
        if line[0] == '>':
            if new:
                sequences.append({'ID': new['ID'],
                                  'description': new['description'],
                                  'sequence': new['sequence']})
                new = {}
            first_line = line.split(" ", 1)
            new['ID'] = first_line[0][1:]
            new['description'] = first_line[1].rstrip()
            new['sequence'] = ''
        else:
            new['sequence'] += line.rstrip()
    sequences.append({'ID': new['ID'],
                      'description': new['description'],
                      'sequence': new['sequence']})
    return sequences


def extend(i, hits, sequence, seed, read_id, is_rev_comp):
    """Extend seed over sequence.

    :param i: (int)
        seed position in read
    :param hits: (list)
        list of positions apparitions of seed in suffix table of genome
    :param sequence: (str)
        the sequence query
    :param seed: (str)
        the seed
    :param read_id: (str)
        the id of the read
    :param is_rev_comp: (bool)
        True if extend on negative strand
        False else
    :return: (list)
        all alignement where score > 50
    """
    strand = '+'
    if is_rev_comp:
        strand = '-'
    res = []
    for hit in hits:
        to_align = sequence[hit-i:hit-i+len(seed)]
        if len(to_align) == len(seed):
            alignment = parasail.sg_dx_trace_scan(seed, to_align, 10, 1, parasail.dnafull)
            if alignment.score > 50:
                a = {'id': read_id, 'seq': seed, 'pos': hit,
                     'score': alignment.score, 'cigar': '', 'strand': strand}
                if args.cigar:
                    a['cigar'] = alignment.cigar.decode
                res.append(a)
    return res


def parse_gz(file, size, genome):
    """Open file, product all size-mers from the file and align each size-mers with genome.

    :param file: (str)
        path to the reads folder with .gz extension
    :param size: (int)
        size of kmer
    :param genome: (Genome)
        the genome object
    :return: (list)
        list of all alignment with score > 50
    """
    all_alignment = []
    # parse reads
    for io_read in SeqIO.parse(gzip.open(file, 'rt'), 'fastq'):
        read_id, read_seq = repr(io_read.id), str(io_read.seq)
    # ignore reads with only N's
        if not (read_seq.startswith('NNN') and read_seq.endswith('NNN')):
            # test if there are hits
            for i in range(0, len(read_seq)-size+1, size):
                hits = genome.find(read_seq[i:i+size], is_reverse=False)
                rev_hits = genome.find(read_seq[i:i+size], is_reverse=True)
                for ex in extend(i, hits, genome.sequence, read_seq, read_id, is_rev_comp=False):
                    all_alignment.append(ex)
                for ex in extend(i, rev_hits, genome.rc, read_seq, read_id, is_rev_comp=True):
                    all_alignment.append(ex)
    return all_alignment


def out_results(out, results):
    """Write results in out file.

    :param out: (str)
        path to out file
    :param results: (list)
        list of dict
    """
    with open(out, 'w') as file:
        for res in results:
            file.write(f"{res['id']}\t{res['pos']}\t{res['strand']}\t{res['score']}\t{res['seq']}\t{res['cigar']}\n")


def build_genome_object(list_seqs):
    """Build a Genome instance.

    :param list_seqs: (list)
        list of sequences stored in dict
    :return: (Genome)
        the genome object
    """
    desc, sequence = "", ""
    ID = list_seqs[0]["ID"]
    for seq in list_seqs:
        desc += f"\"{seq['description']}\", "
        sequence += seq['sequence']
    return Genome(ID, sequence)


def identification(to_identificate, genome, reads, out):
    all_id_reads = set()
    for read in to_identificate:
        with open(read, 'r') as fileIn:
            for line in fileIn:
                all_id_reads.add(line.split("\t")[0][1:-1])
    with open(out, 'w') as fileOut:
        for read_path in reads:
            for io_read in SeqIO.parse(gzip.open("".join(read_path), 'rt'), 'fastq'):
                if str(io_read.id) in all_id_reads:
                    alignment_pos = parasail.sg_dx_trace_scan(str(io_read.seq), genome.sequence, 10, 1,
                                                              parasail.dnafull)
                    alignment_neg = parasail.sg_dx_trace_scan(str(io_read.seq), genome.rc, 10, 1, parasail.dnafull)
                    if alignment_pos.score >= 345 or alignment_neg.score >= 345:
                        print(f"{io_read.id}\t{str(io_read.seq)}")
                        fileOut.write(f"{io_read.id}\t{str(io_read.seq)}")



def main():
    # set up the objects
    parser = arg_parsing()
    args = parser.parse_args()
    genome = build_genome_object(parse_genome(args.genome))
    genome.set_suffix_tables()
    if args.identification == "":
        p, size = [], args.k
        for reads_path in args.reads:
            p += parse_gz("".join(reads_path), size, genome)
            out_results(args.out, p)
    else:
        identification(args.identification, genome, args.reads, args.out)


if __name__ == '__main__':
    main()
