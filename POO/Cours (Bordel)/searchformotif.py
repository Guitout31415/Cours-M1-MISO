import sys

def extrait_seq(f):
    """
    Extrait la séquence contenu dans le fichier fasta f.
    :param f: (str) nom du fichier fasta contenant la séquence à extraire
    :return: (str) séquence
    """
    assert ".fasta" in f, "Ce n'est pas un fichier fasta !"
    with open(f,'r') as fichier:
        return fichier.read().split('\n')[1]
    

def occur_motif(f,m,d):
    """
    Calcule toutes les occurences du motif m dans la séquence se trouvant dans le fichier f
    :param f: (str) nom du fichier fasta contenant la séquence à étudier
    :param m: (str) motif
    :param d: (int) distance de Hamming maximale autorisée
    :return: (str) liste des positions d'occurences
    """
    seq = extrait_seq(f)
    res = ""
    for i in range(len(seq)-len(m)):
        if seq[i:i+len(m)] == m or dist_hamming(seq[i:i+len(m)],m) <= d:
            res += str(i+1)+" "+seq[i:i+len(m)]+"\n"
    return res
    
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
    
if __name__ == '__main__':
    params = sys.argv[1:]
    assert 0<len(params)<=3, 'Veuillez rentrer des paramètres'
    print(occur_motif(params[0],params[1],int(params[2])))
    