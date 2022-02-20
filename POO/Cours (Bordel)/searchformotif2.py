import sys, re
from itertools import combinations

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
    return res
 
def combi_motif(m,k):
    assert 0<k<len(m),'truc'
    res = []
    mm = [str(n) for n in range(len(m))]
    comb = ['-'.join(d) for d in combinations(mm,k)]
    for c in comb:
        memory = m
        for i in range(len(m)):
            if str(i) in c.split('-'):
                memory = memory.replace(memory[i],'.')
        res.append(memory)
    return res
        

if __name__ == '__main__':
    params = sys.argv[1:]
    assert 0<len(params)<=3, 'Veuillez rentrer des paramètres'
    combs = []
    for i in range(1,int(params[1])+1):
        for j in combi_motif(params[0],i):
            combs.append(j)
    pos = []
    for comb in combs:
        z = '(?='+comb+')'
        
    
    
    
    
    