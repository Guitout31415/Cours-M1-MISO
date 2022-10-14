# Projet_MASB_2

LEMAIRE Guillaume
RAOURAOUA Nessim

## Step 1:

- Put your files containing the compressed reads in fastq format in the data folder.
- Execute the command in the main folder :

	$python3 script/seed_extend.py -g <path to genome .fna> -r <path to read_1 .fastq.gz> .. <path to read_n .fastq.gz> -o <outfile>

Example : 

	$python3 script/seed_extend.py -g data/Virus_Genomes/HIV.fna -r data/SRR10971381_1.fastq.gz data/SRR10971381_2.fastq.gz -o reads_vs_HIV.txt

- Re-execute this command for each of your genomes.

/!\ Caution, the computing time can be very long: 27h with 4 VCPUs / 8Go RAM (time computed with 5 genomes)

## Step 2:

- After aligning all your reads against all your genomes, if you are looking to determine the reads belonging to SARS-cov-2, run the following command :

	$python3 script/seed_extend.py -g <path to SARS-cov-2 .fasta> -r <path to read_1 .fastq.gz> .. <path to read_n .fastq.gz> -o <outfile> -i <1_st outfile of step1> .. <n_th outfile of step1>

Example :

	$python3 script/seed_extend.py -g data/Virus_Genomes/SARS-CoV-2.fasta -r data/SRR10971381_1.fastq.gz data/SRR10971381_2.fastq.gz -o reads_from_SARS-CoV.txt -i reads_vs_alpha-corona.txt reads_vs_HIV.txt reads_vs_grippe_a.txt
 
--------------------------------------------------------------------

# Report:
## The choice of data structures
- Data structure used : 

To find seeds in genomes sequences, we have used suffix arrays.
To store suffix array, we use a python list that only stores the positions of the suffix order by suffixes lexicographic order.
There is no storage issues because it is the same as storing each letter of the sequence in a list, but it impact greatly the search time of the seeds in the sequence.
Here we use dichotomic search in the array to find a pattern (seed) in the sequence, so for a great number of read, and long genomes, it is way faster.

- Make it work for huge amounts of data:

The first obvious point is that we analyse compressed reads without unpacking them. When we parse reads, we store none, same with the kmer, we generate the exact amount that we test and none are stored. We use a relatively long kmer size, and non-overlaping at that to reduce greatly the risk of hitting small irrelevant kmers with bad scores, in order to reduce the number of operation for a single read. Same with ignoring reads filled with N's.

- Choice of parameters values:

The choice of non-overlaping kmer with a size above 11 by default has been explained by adaptation to massive data.
For a single hit, we decided on a alignment score threshold of 50 to keep them.
In the identification process, the alignment score threshold is 345 because after several searches, a score of 345 gives a 90% authentication rate.


- Results for each genome :

Due to a small problem with the negative strands (they were not taken into account), we had to restart the calculations, and unfortunately we miss the alignments of the reads against Rhinovirus

	- Against alpha_corona : 73 001
	- Against HIV : 19 089
	- Against grippe_a : 17 879

The cumulated time to align each read with all 4 genomes is 27 hours, that makes a mean of 6h45 for a single genome.

- Results against SARS-CoV-2 :

	$cat reads_identify.txt
