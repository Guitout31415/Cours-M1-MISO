The program restriction_sites find and show all restrictions sites in a DNA sequence without their sub sites.
The DNA sequence is stored in fasta file in the same folder that restriction_sites.py

They are 2 display modes, normal and condensed.
___________________________________________________________________

If you want normal showing, you call the program as below:
	
python3 restriction_sites.py [fasta_file_name] <low_bound> <up_bound>

You obtain : 

{index_of_apparition} {length_DNA_site} {DNA_restriction_site} {number_of_occurences}

NB : <low_bound> and <up_bound> are optional, if bounds are not given, default values are low_bound = 4 and up_bound = 12.
     4 <= low_bound <= up_bound <= 12 and even.
     The sites are order by index of apparition ascending.

-------------------------------------------------------------------

Examples
--------
python3 restriction_sites.py exemple.fasta
4 6 ATGCAT 5
6 6 GCATGC 1
...
664 6 TAGCTA 5
678 8 AAAATTTT 2

*Interpretation :
-"On the 4th nucleotide, you have a site with length of 6, this site is 'ATGCAT' and he's present 5 times in the DNA sequence."
-"On the 6th nucleotide, you have a site with length of 6, this site is 'GCATGC' and he's present 1 time in the DNA sequence."
...
-"On the 664th nucleotide, you have a site with length of 6, this site is 'TAGCTA' and he's present 5 time in the DNA sequence."
-"On the 678th nucleotide, you have a site with length of 8, this site is 'AAAATTTT' and he's present 2 times in the DNA sequence."

python3 restriction_sites.py exemple.fasta 10 12
53 12 TAGCCTAGGCTA 1
...
660 10 TAGCTAGCTA 1

*Interpretation :
-"On the 53th nucleotide, you have a site with length of 12, this site is 'TAGCCTAGGCTA' and he's present 1 time in the DNA sequence."
...
-"On the 660th nucleotide, you have a site with length of 10, this site is 'TAGCTAGCTA' and he's present 1 time in the DNA sequence."
___________________________________________________________________

If you want condensed showing, you call the program as below:
 
python3 restriction_sites.py [fasta_file_name] -c <low_bound> <up_bound>

You obtain :

{length_DNA_site} {DNA_restriction_site} {number_of_occurences} [indexs_of_apparition]

NB : <low_bound> and <up_bound> are optional, if bounds are not given, default values are low_bound = 4 and up_bound = 12.
     4 <= low_bound <= up_bound <= 12 and even.
     The sites are order by alphabetic.

-------------------------------------------------------------------
Examples
--------
python restriction_sites.py exemple.fasta -c
8 AAAATTTT 2 [22, 678]
4 ACGT 3 [133, 188, 498]
...
6 TGATCA 1 [587]
4 TGCA 3 [29, 192, 342]

*Interpretation :
-"There have a site with length of 8, this site is 'AAAATTTT', he's present 2 times in the DNA sequence, more precisely on positions 22 and 678."
-"There have a site with length of 4, this site is 'ACGT', he's present 3 times in the DNA sequence, more precisely on positions 133, 188 and 498."
...
-"There have a site with length of 6, this site is 'TGATCA', he's present 1 time in the DNA sequence, more precisely on position 587."
-"There have a site with length of 4, this site is 'TGCA', he's present 3 times in the DNA sequence, more precisely on position 29, 192 and 342."

python restriction_sites.py exemple.fasta -c 4 6
6 AAATTT 2 [23, 679]
...
4 TGCA 3 [29, 192, 342]

*Interpretation :
-"There have a site with length of 6, this site is 'AAATTT', he's present 2 times in the DNA sequence, more precisely on positions 23 and 679."
...
-"There have a site with length of 4, this site is 'TGCA', he's present 3 times in the DNA sequence, more precisely on position 29, 192 and 342."
