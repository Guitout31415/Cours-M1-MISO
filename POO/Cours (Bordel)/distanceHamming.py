import sys

def dist_hamming(s1,s2):
    """
    Calcul la distance de Hamming entre 2 séquences s1 et s2.
    :param s1,s2: (str) séquences
    :return: (int) distance de Hamming
    """
    assert len(s1) == len(s2), "Les séquences n'ont pas la même taille"
    d = 0
    for i in range(len(s1)):
        if s1[i] != s2[i]:
            d += 1
    return d

def extrait_seq(f):
    """
    Extrait la séquence contenu dans le fichier fasta f.
    :param f: (str) nom du fichier fasta contenant la séquence à extraire
    :return: (str) séquence
    """
    assert ".fasta" in f, "Ce n'est pas un fichier fasta !"
    with open(f,'r') as fichier:
        return fichier.read().split('\n')[1]
    
    
if __name__ == "__main__":
    params = sys.argv[1:]
    assert len(params) == 2, "Veuillez indiquer 2 séquences !"
    f1,f2 = params[0],params[1]
    s1,s2 = extrait_seq(f1),extrait_seq(f2)
    print(dist_hamming(s1,s2))
    
    