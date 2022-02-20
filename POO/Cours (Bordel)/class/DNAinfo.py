from dna import DNA
from DNAfactory import DNAFactory
from sys import argv

if __name__ == '__main__':
    params = argv[1:]
    
    dna_fac = DNAFactory()
    seq = dna_fac.readFasta(params[0])
    
    dna = DNA(seq)
    
    print(f"{len(seq)} {dna.gc_rate()}")
