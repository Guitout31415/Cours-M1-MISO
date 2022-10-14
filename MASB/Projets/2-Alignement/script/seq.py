
# import
from Bio.Seq import Seq


# classes
class Sequence:
    """Model class for potential others, more specialised classes that are also sequences."""
    def __init__(self, ide, seq):
        """
        :param ide: (str)
            id of sequence
        :param seq:
            the DNA sequence

        >>> seq, id = 'ATGCGTA', "example"
        >>> a = Sequence(id, seq)
        >>> a.sequence == seq and a.ID == id
        True
        """
        self.ID = ide
        self.sequence = seq
        self.rc = str(Seq(seq).reverse_complement())  # Reverse Complement

    def __str__(self):
        return f"({self.ID}, \n{self.sequence})"

    def __repr__(self):
        return f"({self.ID}, \n{self.sequence})"


class Genome(Sequence):
    """Genome is a known sequence that helps identify an unknown one."""
    def __init__(self, ide, seq):
        """
        :param ide: (str)
            id of genome
        :param seq:
            DNA sequence of genome
        """
        super().__init__(ide, seq)
        self.__suffix_array = []
        self.__reverse_array = []

    # methods
    def set_suffix_tables(self):
        """Define the suffix table containing all suffixes of the sequence and the reverse complement.

         It's the list of all suffixes positions sorted by suffixes lexicographic order.
         """
        self.__suffix_array += sorted([i for i, a in enumerate(self.sequence)],
                                      key=lambda x: self.sequence[x:])
        self.__reverse_array += sorted([i for i, a in enumerate(self.rc)],
                                       key=lambda x: self.rc[x:])

    def get_suffix_tables(self):
        """Get the setted arrays.

        # suffixes of ATG : (G, 2) (TG, 1), (ATG, 0)
        # in lexicographic order we have : [ATG, G, TG] with only positions, [0, 2, 1]
        # same with the reverse complement CAT : [1, 0, 2]
        >>> genome = Genome('test', 'ATG')
        >>> genome.set_suffix_tables()
        >>> genome.get_suffix_tables()
        ([0, 2, 1], [1, 0, 2])
        """
        return self.__suffix_array, self.__reverse_array

    def __find_first(self, seed, table, seq):
        """Find the 1st apparition of seed in suffix table of seq

        :param seed: (str)
            kmer to search in table
        :param table: (list)
            suffix table of seq
        :param seq: (str)
            DNA sequence
        :return: (int)
            seed position's in table
        """
        inf, sup = (0, len(table))
        mid = (inf+sup)//2
        while inf < mid < sup:
            # 2nd condition to check if it's the first one in the array
            if seed == seq[table[mid]:table[mid]+len(seed)] and seed != seq[table[mid-1]:table[mid-1]+len(seed)]:
                return mid
            elif seed <= seq[table[mid]:table[mid]+len(seed)]:
                sup = mid
                mid = (inf+sup)//2
            elif seed >= seq[table[mid]:table[mid]+len(seed)]:
                inf = mid
                mid = (inf+sup)//2
        return -1

    def __find_last(self, seed, table, seq):
        """Find the last apparition of seed in suffix table of seq

        :param seed: (str)
            kmer to search in table
        :param table: (list)
            suffix table of seq
        :param seq: (str)
            DNA sequence
        :return: (int)
            seed position's in table
        """
        inf, sup = (0, len(table))
        mid = (inf+sup)//2
        while inf < mid < sup:
            # 2nd condition to check if it's the last apparition in the array (modulo to not exceed the table size)
            if seed == seq[table[mid]:table[mid]+len(seed)] \
                    and seed != seq[table[(mid+1) % len(table)]:table[(mid+1) % len(table)]+len(seed)]:
                return mid
            elif seed >= seq[table[mid]:table[mid]+len(seed)]:
                inf = mid
                mid = (inf+sup)//2
            elif seed <= seq[table[mid]:table[mid]+len(seed)]:
                sup = mid
                mid = (inf+sup)//2
        return -1

    def find(self, seed, is_reverse):
        """Tells if a k-mer is in the template sequence searching by dichotomy in the suffix array.

        :param seed: (str)
            seed to search
        :param is_reverse: (bool)
            True if we find seed on the negative strand
            False else
        :return: (list)
            list of apparitions of seed in suffix table of genome

        >>> genome = Genome('test', 'ATG')
        >>> genome.set_suffix_tables()
        >>> genome.find('TTG', True)
        []
        """
        table, seq = self.__suffix_array, self.sequence
        if is_reverse:
            table = self.__reverse_array
            seq = self.rc
        first = self.__find_first(seed, table, seq)
        last = self.__find_last(seed, table, seq)
        if first == -1 or last == -1:
            return []
        else:
            # find the first and the last and get all positions between the two
            return self.__suffix_array[first:last]


# main for tests purposes
if __name__ == '__main__':
    import doctest
    doctest.testmod()
