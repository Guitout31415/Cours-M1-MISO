class PFM:
    
    
    def __init__(self,seqs):
        """
        Parameters:
        seqs : list
            list of DNA sequences with same length.
        """
        assert set([len(seq) for seq in seqs]) == {len(seqs[0])}, \
               'There have sequence in seqs too big or too small'
        self.__seqs = seqs
      
      
    def is_conserved(self, n):
        """Checks if columns n in all sequences is conserved.
        
        Parameter
        ---------
        n : int
            column number's
        
        Return
        ------
        bool
            True if row n is conserved, False else.
        """
        matrix = self.__countmatrix()
        return set([matrix[i][n] for i in range(4)]) == {0, len(self.__seqs)}
                   
    
    def conserved_columns(self):
        """
        Gives the list of column numbers that are conserved.
        """
        conserv_col = []
        for i in range(len(self.__seqs[0])):
            if self.is_conserved(i):
                conserv_col.append(i)
        return conserv_col
    
    
    def most_frequent_base(self, col):
        """Gives the most frequence base in position col.
        
        Parameter
        ---------
        col : int
            columns number
            
        Return
        ------
        str
            A, T, C or G
        """
        matrix = self.__countmatrix()
        dic = {'A':0, 'T':0, 'C':0, 'G':0}
        for i in range(4):
            dic[list(dic.keys())[i]] = matrix[i][col]
        
        return sorted(dic.items(), key = lambda t: t[1])[-1][0]
    
    
    def consensus(self):
        return ''.join([self.most_frequence_base(i) for i in range(9)])
    
    
    def weak_consensus(self):
        return None
    
    
    def append(self, seq):
        """Append a new site seq.

        Parameter
        ---------
        seq : str
            A DNA seq with same lentgh that others. 
        """
        self.__seqs.append(seq)
    
    
    def __countmatrix(self):
        """
        """
        matrix = [['A'], ['T'], ['C'], ['G']]
        for b in matrix:
            for _ in range(len(self.__seqs[0])):
                b.append(0)
        for seq in self.__seqs:
            i = 0
            while i < len(seq):
                base_i = seq[i]
                if base_i == 'A':
                    matrix[0][i+1] += 1
                elif base_i == 'T':
                    matrix[1][i+1] += 1
                elif base_i == 'C':
                    matrix[2][i+1] += 1
                else:
                    matrix[3][i+1] += 1
                i += 1
        return matrix
    
    
    def __add__(self,m):
        return None
    
    
    def __str__(self):
        matrix = self.__countmatrix()
        
        s = '{0}'
        for i in range(1,len(self.__seqs[0])+1):
            s += ' {'+str(i)+':2d}'  
        res = ''
        for i in range(4):
            res += s.format(*matrix[i])+'\n'
        return res[:-1]
        
          
    def __len__(self):
        return len(self.__seqs[0])
    
    
    
    
    
    
    
    
    