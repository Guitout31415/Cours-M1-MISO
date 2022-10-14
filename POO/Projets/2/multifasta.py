class Multifasta:
    
    def __init__(self, file):
        """
        Parameters:
        file : str
            multifasta file
        """
        self.__file = file
    
    def sequences(self):
        """
        Extract all sequences in multifasta file.
        
        Return
        ------
        list
            list of all sequences in the multifasta file.
        """
        res = []
        with open(self.__file, 'r', encoding = 'utf8') as fileIn:
            return fileIn.read().split('\n')[1::2]
    
    def __str__(self):
        return self.__seq
    
    def __len__(self):
        return len(self.__seq)
        