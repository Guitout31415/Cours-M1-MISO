import random
from math import log

def random_word():
    """
    Returns a word with random letters whose length is between 4 and 7.

    :rtype: string
    """
    letters = [ chr(i) for i in range(ord('a'),ord('z')+1) ] + [ chr(i) for i in range(ord('A'),ord('Z')+1) ]
    length = 4 + random.randint(0,4)
    word = ""
    for i in range(length):
        word = word + random.choice(letters)
    return word

class BloomFilter(object):
    
    def __init__ (self, nb_hash, size_bf):
        """
        Creates a new empty Bloom filter of size :math:`2^n`

        :param size_bf: the log of the size of the filter
        :type size_bf: int
        :param nb_hash: the number of hash functions
        :type nb_hash: int
        """
        self.hash_functions_nb = nb_hash
        self.__size_bf = size_bf
        self.__bool_tab = [0 for _ in range(2**size_bf)]
        self.__hash_random_tab = self.init_random_tab()

        
    def init_random_tab(self):
        """
        Creates the hash functions.
        """
        random_tab = [ 0 for i in range(128 * self.hash_functions_nb)]
        for i in range(128):
            for j in range(self.hash_functions_nb):
                random_tab[j * 128 + i] = random.randint(1,32000)
        return random_tab
                
    def hash_of_string(self, word, n):
        """
        For a given string, returns the hash code for the n-th hashing function.
        :param kmer_string: The string to be hashed.
        :type kmer_string: string
        :param n: The function number.
        :type n: int
        :return: A hash code
        :rtype: int

        .. note:: 
           1 <= n <= nb_hash_functions
        """
        assert isinstance(word, str), 'word is not a str !'
        assert 1 <= n <= self.hash_functions_nb
        if n == 1:
            return sum([self.__hash_random_tab[ord(l)] for l in word])
        else:
            return sum([self.__hash_random_tab[128*(n-1)+ord(l)]  for l in word])

    def add(self, element):
        """
        Adds *element* to the Bloom filter.

        :param element: The element to be added
        :type element: str
        """
        for n in range(1, self.hash_functions_nb+1):
            hashed_string = self.hash_of_string(element, n)
            self.__bool_tab[hashed_string%2**self.__size_bf] = 1

    def contains(self, element):
        """
        Returns True if *element* is in the Bloom filter.

        :param element: The element to be tested
        :type element: str
        """
        for n in range(1, self.hash_functions_nb+1):
            hashed_string = self.hash_of_string(element, n)
            if not self.__bool_tab[hashed_string%2**self.__size_bf]:  # <=> if not 0:
                return False
        return True

if __name__ == "__main__":
    """
    bf = BloomFilter(3,10000)
    bf.add("AGTACCC")
    if bf.contains("AGTACCC"):
        print("%s est present" % ("AGTACCC"))
    else:
        print("k-mer absent")
    if bf.contains("TTTATTT"):
        print("%s est present" % ("TTTATTT"))
    else:
        print("k-mer absent")
    w = random_word()
    if bf.contains(w):
        print("%s est present" % (w))
    else:
        print("mot absent")
    """
    E = set()
    while len(E) < 2**10:
        E.add(random_word())
    for n in range(1, 9):
        for t in range(10, 21):
            FP = set()
            cpt_test = 0
            BF = BloomFilter(n, t)
            for word in E: BF.add(word)
            for f in range(1, 2**12):
                U = random_word()
                if U not in E:
                    cpt_test += 1
                    if BF.contains(U):
                        FP.add(U)
            print(f"{t} {n} {cpt_test} {len(FP)} {len(FP)/cpt_test}")
        print('\n')
