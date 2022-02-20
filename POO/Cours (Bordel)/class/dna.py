class DNA:
    
    # attribut de classe
    __COMPLEMENT = { 'A': 'T', 'T': 'A', 'C': 'G', 'G': 'C' }
    
    # constructeur
    def __init__(self, seq):
        # self = l'instance actuelle de l'objet
        """
        Parameters
        ----------
        seq : String
            seq is a string made of letters 'A', 'C', 'G', 'T'
        """
        # l'attribut __seq de moi-même devient égal à seq
        self.__seq = seq
        # il est préfixé par __ pour indiquer qu'il est privé : 
        # un utilisateur d'une instance de la classe DNA ne pourra
        # pas y accéder
    
    # des méthodes publiques
    def gc_rate(self):
        """
        Returns
        -------
        double
            GC rate of the DNA sequence
        """
        n = 0
        # self.__seq : le __seq de moi-même
        for nuc in self.__seq:
            if nuc in ['C','G']:
                n += 1
        return n / len(self.__seq)
    
    def revcomp(self):
        """
        Returns
        -------
        DNA
            a fresh DNA sequence which is the reverse complement of this object
        """
        seqrevcomp = ""
        for nuc in self.__seq:
            seqrevcomp += self.__complement(nuc)
        return DNA(seqrevcomp[::-1])

    def to_string(self):
        """
        Returns
        -------
        String
            a string representation of the DNA sequence
        """
        return self.__seq
    
    # des méthodes privées
    def __complement(self,nuc):
        """
        Parameters
        ----------
        nuc : String
            a nucleotide given as a string of one letter (A,T,C,G) 
        Returns
        -------
        String
            the base complement as a string of one letter (A,T,C,G)
        """
        return self.__COMPLEMENT[nuc]