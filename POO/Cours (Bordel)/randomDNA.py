from random import randint
import sys, os

def genere_ADN(l):
    """
    Génère une séquence d'ADN aléatoire de longueur l
    :param l: (int) longueur du brin d'ADN
    :return: (str) brin d'ADN génère aléatoirement de longueur l
    """
    ADN = ""
    nucleo = ("A","T","C","G")
    for n in range(l):
        r = randint(0,3)
        ADN += nucleo[r]
    return ADN

if __name__ == "__main__":
    params = sys.argv[1:]
    assert 0<len(params)<=2, "Veuillez indiquer la longueur de la séquence d'ADN voulue"
    l = int(params[0])
    ADN = genere_ADN(l)
    if len(params) == 2:
        nom = os.path.splitext(params[1])[0].split("/")[-1]
        with open(nom+".fasta",'w') as fichier:
            fichier.write("> "+nom+"\n"+ADN)
    else:
        print(ADN)
    
