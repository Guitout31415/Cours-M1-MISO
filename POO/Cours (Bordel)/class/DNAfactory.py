from random import randint

class DNAFactory:
    
    __NUCLEOTIDES = ('A','T','C','G')
    
    def random(self,n,gc=0):
        """
        Génére une séquence d'ADN aléatoire
        """
        res = ''
        if not gc:
            rand = [randint(0,3) for _ in range(n)]
        else:
            GC = int(gc*n)
            rand = [randint(0,1) for _ in range(n-GC)]
            for i in range(GC):
                p = randint(0,len(rand)-1)
                r = randint(2,3)
                rand.insert(p,r)
        for r in rand:
            res += self.__NUCLEOTIDES[r]
        return res
    
    def readFasta(self,file):
        with open(file,'r') as In:
            return ''.join(In.read().split('\n')[1:])
