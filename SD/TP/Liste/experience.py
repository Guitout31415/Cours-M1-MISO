"""Ce programme permet de dessiner un graphe.

Le graphe montrera les vitesses d'exécution de 2 fonctions avec un liste native
de python et une ExtendedList.


Utilisation : python3 experience.py <file .gff3>
"""
__author__ = 'LEMAIRE Guillaume'


from gene import *
from extendedlist import *
import timeit
import sys
import pylab

def load_gff(filepath, gene_list, is_extended_list):
    gff = open(filepath)
    for line in gff.readlines():
        fields = line.split('\t')
        if len(fields) > 3 and fields[2] == "gene":
            g = Gene.from_gff(line)
            if g:
                if is_extended_list:
                    # Notez qu'on ne peut pas faire de append pour les ExtendedList
                    # mais ce n'est pas grave, à la place on ajoute en tête.
                    gene_list = ExtendedList(g, gene_list)
                else:
                    gene_list.append(g)

    return gene_list


def nb_gene_lengths_1(gene_list, min_length, max_length, n):
    '''
        Return the number of genes whose length is between min_length and max_length
        among the n first genes.
    '''
    nb = 0
    for i in range(len(gene_list)):
        if n == i:
            return nb
        gene = gene_list[i]
        nb += min_length <= len(gene) <= max_length
    return nb


def nb_gene_lengths_2(gene_list, min_length, max_length, n):
    '''
        Return the number of genes whose length is between min_length and max_length
        among the n first genes.
    '''
    nb = 0
    i = 0
    for gene in gene_list:
        if n == i:
            return nb
        nb += min_length <= len(gene) <= max_length
        i += 1
    return nb


#Main programm
if __name__ == "__main__":
    fil = sys.argv[1]
    gene_list_extended = load_gff(fil, ExtendedList(), True)
    gene_list_not_extended = load_gff(fil, [], False)
    d1, d1_ext = [], []
    d2, d2_ext = [], []

    for x in range(100):
    # Avec Extended list
        d1_ext.append(timeit.timeit(lambda: nb_gene_lengths_1(gene_list_extended, 10, 1000, x), number=5)/5)
        d2_ext.append(timeit.timeit(lambda: nb_gene_lengths_2(gene_list_extended, 10, 1000, x), number=5)/5)
    # Avec list native
        d1.append(timeit.timeit(lambda: nb_gene_lengths_1(gene_list_not_extended, 10, 1000, x), number=5)/5)
        d2.append(timeit.timeit(lambda: nb_gene_lengths_2(gene_list_not_extended, 10, 1000, x), number=5)/5)

    pylab.semilogy(list(range(100)), d1)
    pylab.semilogy(list(range(100)), d2)
    pylab.semilogy(list(range(100)), d1_ext)
    pylab.semilogy(list(range(100)), d2_ext)
    pylab.legend(['List methode [i]', 'List methode iter', 'ExtendedList methode [i]', 'ExtendedList methode iter'])
    pylab.xlabel("longueur de la liste (nb d'elements)")
    pylab.ylabel('temps de calcul (en sec)')
    
    pylab.savefig('graphe')
    pylab.show()
    print("Le graphe à bien été créé")
