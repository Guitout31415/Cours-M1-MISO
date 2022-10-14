# Projet MASB 3

RAOURAOUA Nessim

LEMAIRE Guillaume

# Usage

    $python3 scripts/assembler.py -r <reads path> [OPTIONS]

OPTIONS :

- -s <kmer size> default = 80
- -o <outfile path> default = "contigs.fasta"

Example :

    $python3 scripts/assembler.py -r data/reads/Hard.fa -o test.txt -s 90
