from ast import arg
from seq import Bruijn
import gzip
import argparse
from Bio import SeqIO

# Parser
def arg_parser():
    """Enable argument parsing for the script."""
    parse = argparse.ArgumentParser()
    parse.add_argument('-r', '--readsfile', help='reads file path on fasta format', required=True)
    parse.add_argument('-s', '--kmersize', help='kmer size', default=80, type=int)
    parse.add_argument('-o', '--outfile', help='outfile name', default = 'contigs.txt')
    return parse

def extract_kmers_from_fasta(fasta_file, kmer_size):
    """ Extract k-mers from a fasta file.

    :param fasta_file: str
        name of the file to extract k-mers from
    :param kmer_size: int
        size of the k-mers to extract
    :return: dict
        all k-mers extracted from the file
    """
    all_kmers = {}
    for io_read in SeqIO.parse(fasta_file, 'fasta'):
        read_seq = str(io_read.seq)
        for i,_ in enumerate(read_seq[:-kmer_size+1]):
            kmer = read_seq[i:i+kmer_size]
            if kmer not in all_kmers:
                all_kmers[kmer] = 0
            all_kmers[kmer] += 1
    for kmer in [kmer for kmer in all_kmers if all_kmers[kmer]<=3]:
        all_kmers[kmer] *= -1 # negative value to indicate that the k-mer will not be used to build contigs
    return all_kmers

def extract_kmers_from_gz(filename, size):
    """ Extract k-mers from a gzipped file.

    :param filename: str
        name of the file to extract k-mers from
    :param size: int
        size of the k-mers to extract
    :return: dict
        all k-mers extracted from the file
    """
    all_kmers = {}
    for io_read in SeqIO.parse(gzip.open(filename, 'rt'), 'fasta'):
        read_seq = str(io_read.seq)
        for i,_ in enumerate(read_seq[:-size+1]):
            kmer = read_seq[i:i+size]
            if kmer not in all_kmers:
                all_kmers[kmer] = 0
            all_kmers[kmer] += 1
    for kmer in [kmer for kmer in all_kmers if all_kmers[kmer]<=3]:
        all_kmers[kmer] *= -1 # negative value to indicate that the k-mer will not be used to build contigs
    return all_kmers

def main():
    parser = arg_parser()
    args = parser.parse_args()
    size = args.kmersize
    reads = args.readsfile
    if reads.endswith(".gz"):
        a = extract_kmers_from_gz(reads, size)
    else:
        a = extract_kmers_from_fasta(reads, size)
    b = Bruijn(a)
    all_pieces = sorted(b.all_pieces, key=lambda x: len(x))
    i = 1
    with open(args.outfile, 'w') as fileOut:
        for piece in all_pieces:
            fileOut.write(f">contig{i}\n")
            fileOut.write(piece)
            fileOut.write("\n")
            i += 1

if __name__ == '__main__':
    main()
