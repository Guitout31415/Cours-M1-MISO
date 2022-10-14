from possible_contigs import *

class Bruijn:
    def __init__(self, all_kmer):
        """ Class to represent Bruijn graph allow us to reassemble a sequence from its k-1mers
        :param all_kmer: dict
        """
        self.all_kmer = all_kmer
        self._size = len(list(all_kmer.keys())[0])
        self.all_pieces = self.__build_all_pieces()

    def __build_one_piece(self, seed):
        """ Build one piece of the contig.
        :param seed: str
        :return: str
        """
        contig = seed
        successor = self.__get_successor(seed)
        predecessor = self.__get_predecessor(seed)
        while successor:
            contig = contig+successor
            successor = self.__get_successor(contig[-self._size:])
        while predecessor:
            contig = predecessor+contig
            predecessor = self.__get_predecessor(contig[:self._size])
        return contig

    def __get_successor(self, kmer):
        """ Get the nucleotide(s) successor of kmer.
        :param kmer: str
        :return: str
        """
        possible = [kmer[1:]+'A', kmer[1:]+'G', kmer[1:]+'C', kmer[1:]+'T']
        successors = [succ for succ in possible if ((succ in self.all_kmer) and (self.all_kmer[succ]>0))]
        if len(successors) == 1:
            succ = successors[0]
            self.all_kmer[succ] *= -1
            return succ[-1]
        if len(successors) == 2:
            possible1 = Possible_successor_contigs(successors[0], self.all_kmer)
            possible2 = Possible_successor_contigs(successors[1], self.all_kmer)

            contig1 = possible1.get_contig()
            contig2 = possible2.get_contig()
            if not self.__is_bubble(contig1, contig2, True):
                if possible1.is_head_end() and possible2.is_head_end(): # here, the two successors are head_end
                    if len(contig1)/3 > len(contig2):
                        self.all_kmer = possible1.get_all_kmer_left()
                        return contig1
                    elif len(contig1) < len(contig2)/3:
                        self.all_kmer = possible2.get_all_kmer_left()
                        return contig2
                    else: return ''
                elif possible1.is_head_end():
                    self.all_kmer = possible2.get_all_kmer_left()
                    return contig2
                elif possible2.is_head_end():
                    self.all_kmer = possible1.get_all_kmer_left()
                    return contig1
                else: return ''
            else:
                bubble = self.__get_bubble(contig1, contig2, True)
                kmers_in_bubble = {contig : [contig[i:i+self._size] for i in range(len(contig)-self._size+1)] for contig in bubble}
                counts = {contig : sum([abs(self.all_kmer[kmer]) for kmer in kmers_in_bubble[contig]]) for contig in kmers_in_bubble}
                bubble = sorted(bubble, key=lambda x: counts[x], reverse=True)
                cont_max = bubble[0]
                cont_min = bubble[-1]
                if counts[cont_max] >= 30*counts[cont_min]:
                    return [contig for contig in bubble if cont_max in contig][0]
                else:
                    return ''
        return ''

    def __get_predecessor(self, kmer):
        """ Get the nucleotide(s) predecessor of kmer.
        :param kmer: str
        :return: str
        """
        possible = ['A'+kmer[:-1], 'G'+kmer[:-1], 'C'+kmer[:-1], 'T'+kmer[:-1]]
        predecessors = [pred for pred in possible if ((pred in self.all_kmer) and (self.all_kmer[pred]>0))]
        if len(predecessors) == 1:
            pred = predecessors[0]
            self.all_kmer[pred] *= -1
            return pred[0]
        if len(predecessors) == 2:
            possible1 = Possible_predecessor_contigs(predecessors[0], self.all_kmer)
            possible2 = Possible_predecessor_contigs(predecessors[1], self.all_kmer)

            contig1 = possible1.get_contig()
            contig2 = possible2.get_contig()
            if not self.__is_bubble(contig1, contig2, False):
                if possible1.is_head_end() and possible2.is_head_end(): # here, the two successors are head_end
                    if len(contig1)/3 > len(contig2):
                        self.all_kmer = possible1.get_all_kmer_left()
                        return contig1
                    elif len(contig1) < len(contig2)/3:
                        self.all_kmer = possible2.get_all_kmer_left()
                        return contig2
                    else: return ''
                elif possible1.is_head_end():
                    self.all_kmer = possible2.get_all_kmer_left()
                    return contig2
                elif possible2.is_head_end():
                    self.all_kmer = possible1.get_all_kmer_left()
                    return contig1
            else:
                bubble = self.__get_bubble(contig1, contig2, False)
                kmers_in_bubble = {cont : [cont[i:i+self._size] for i in range(len(cont)-self._size+1)] for cont in bubble}
                counts = {cont : sum([abs(self.all_kmer[kmer]) for kmer in kmers_in_bubble[cont]]) for cont in kmers_in_bubble}
                bubble = sorted(bubble, key=lambda x: counts[x], reverse=True)
                cont_max = bubble[0]
                cont_min = bubble[-1]
                if counts[cont_max] >= 30*counts[cont_min]:
                    return [contig for contig in bubble if cont_max in contig][0]
                else:
                    return ''
            return ''
            
    def __build_all_pieces(self):
        """ Build all contigs from the graph.
        :return: list
        """
        all_pieces = []
        for seed in self.all_kmer:
            if self.all_kmer[seed] > 0:
                self.all_kmer[seed] *= -1
                all_pieces.append(self.__build_one_piece(seed))
        return all_pieces

    def __is_bubble(self, contig1, contig2, succ):
        """ Check if two contigs create a bubble.
        :param contig1: str
        :param contig2: str
        :param succ: bool
        :return: bool
        """
        if succ:
            for i,_ in enumerate(contig1):
                if contig1[i:] in contig2:
                    return True
        else :
            for i,_ in enumerate(contig1):
                if contig1[:-i] in contig2:
                    return True
        return False

    def __get_bubble(self, contig1, contig2, succ):
        """ Get the bubble between two contigs.
        :param contig1: str
        :param contig2: str
        :param succ: bool
        :return: str
        """
        if succ:
            for i,_ in enumerate(contig1):
                if contig1[i:] in contig2:
                    index = contig2.index(contig1[i:])
                    return [contig1[:i], contig2[:index]]
        else :
            for i,_ in enumerate(contig1):
                if contig1[:-i] in contig2:
                    index = contig2.index(contig1[:-i])
                    return [contig1[-i:], contig2[index:]]

# main for tests purposes
if __name__ == '__main__':
    import doctest
    doctest.testmod()
