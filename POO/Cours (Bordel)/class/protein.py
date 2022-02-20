class Protein:
    
    def __init__(self,prot):
        """
        Parameters:
        prot : str
            string
        """
        self.__prot = prot
    
    def __len__(self):
        return len(self.__prot)
    
    def __str__(self):
        return str(self.__prot)
    
    def my_count(self,aa):
        return (self.__prot).count(aa)
        