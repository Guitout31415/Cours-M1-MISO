from sys import argv
from multifasta import *
from PFM import *

def search(pfm, seq):
    """blablablabla

    Parameters
    ----------
    pfm : list
        blablablabla

    seq : str
        sequence of DNA

    Return
    ------
    list
        blablablabla

    Example
    -------
    >>> m = PFM(l)
    >>> print(search(m, "GGGAACTTGGTCAT"))
    [3]
    >>> print(search(m, "GCCAGCGGAAGGAACTTGCTCAT"))
    [1, 12]
    >>> print(search(m, "GGGAACTTGATCAT"))
    []
    """
    assert set(seq) <= {'A', 'T', 'C', 'G'}, 'Give a good sequence of DNA'
    return None


if __name__ == '__main__':
    params = argv[1:]
    file = params[0]
    m = Multifasta(file)
    list_seqs = [seq.upper() for seq in m.sequences()]
    m = PFM(list_seqs)
    print(m)
    print(len(m))
    print(m.is_conserved(5))
    print(m.is_conserved(6))
    print(m.is_conserved(7))
    print(m.is_conserved(8))
    print(m.conserved_columns())
    print(m.most_frequent_base(4))
    print(m.consensus())
    print(m.weak_consensus())
    m.append("ATTAGGATA")
    print(m)
    print(m.conserved_columns())
    print(m+m)
    