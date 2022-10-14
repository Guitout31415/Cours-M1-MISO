class Possible_successor_contigs:
    def __init__(self, kmer, all_kmer):
        """ Build a potential contig during successor extension.
        :param kmer: str
        :param all_kmer: dict
        """
        self.kmer = kmer
        self._size = len(kmer)
        self.all_kmer = all_kmer
        self.head_end = False
        self.contig = self.__build_contig(kmer)

    def get_all_kmer_left(self):
        """ Give all kmers left after extension.
        :return: dict
        """
        return self.all_kmer

    def get_contig(self):
        """ Get the contig.
        :return: str
        """
        return self.contig[self._size-1:]

    def is_head_end(self):
        """ Check if the contig is head_end.
        :return: bool
        """
        return self.head_end

    def __build_contig(self, kmer):
        """ Build the potentiel contig.
        :param kmer: str
        :return: str
        """
        contig = kmer
        successor = self.__get_successor(kmer)
        while successor:
            contig = contig+successor
            successor = self.__get_successor(contig[-self._size:])
        return contig

    def __get_successor(self, kmer):
        """ Get the successor of the kmer.
        :param kmer: str
        :return: str
        """
        possible = [kmer[1:]+'A', kmer[1:]+'G', kmer[1:]+'C', kmer[1:]+'T']
        successors = [succ for succ in possible if ((succ in self.all_kmer) and (self.all_kmer[succ]>0))]
        if len(successors) == 0:
            self.head_end = True # end of contig because no successor found thanks kmers
        elif len(successors) == 1:
            succ = successors[0]
            self.all_kmer[succ] *= -1
            return succ[-1]
        return '' # contig can't be continued

class Possible_predecessor_contigs:
    def __init__(self, kmer, all_kmer):
        """ Build a potential contig during predeccessor extension.
        :param kmer: str
        :param all_kmer: dict
        """
        self.kmer = kmer
        self._size = len(kmer)
        self.all_kmer = all_kmer
        self.head_end = False
        self.contig = self.__build_contig(kmer)

    def get_all_kmer_left(self):
        """ Give all kmers left after extension.
        :return: dict
        """
        return self.all_kmer

    def get_contig(self):
        """ Get the contig.
        :return: str
        """
        return self.contig[:-self._size+1]

    def is_head_end(self):
        """ Check if the contig is head_end.
        :return: bool
        """
        return self.head_end

    def __build_contig(self, kmer):
        """ Build the potentiel contig.
        :param kmer: str
        :param all_kmer: dict
        :return: str
        """
        contig = kmer
        predecessor = self.__get_predecessor(kmer)
        while predecessor:
            contig = predecessor+contig
            predecessor = self.__get_predecessor(contig[:self._size])
        return contig

    def __get_predecessor(self, kmer):
        """ Get the predecessor of the kmer.
        :param kmer: str
        :return: str
        """
        possible = ['A'+kmer[:-1], 'G'+kmer[:-1], 'C'+kmer[:-1], 'T'+kmer[:-1]]
        predecessors = [pred for pred in possible if ((pred in self.all_kmer) and (self.all_kmer[pred]>0))]
        if len(predecessors) == 0:
            self.head_end = True # end of contig because no successor found thanks kmers
        elif len(predecessors) == 1:
            pred = predecessors[0]
            self.all_kmer[pred] *= -1
            return pred[0]
        return '' # contig can't be continued
