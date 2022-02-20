"""
This program finds all restriction sites in a DNA sequence.

The DNA sequence is stored at fasta format file.

Usages:
=======
    If condensed option -c is required:
        python3 restriction_sites.py argument1 argument2 argument3 argument4

        argument1: a fasta format file as a string
        argument2: -c
        argument3: (optionnal) a lower bound as a even int
        argument4: (optionnal) an upper bound as a even int
    Else:
        python3 restriction_sites.py argument1 argument2 argument3

        argument1: a fasta format file as a string
        argument2: (optionnal) a lower bound as a even int
        argument3: (optionnal) an upper bound as a even int
"""

__authors__ = "LEMAIRE Guillaume"
__date__ = "2021/10"


import sys
import copy
import doctest


def extract_seq(file):
    """Extract the sequence from file in fasta format.

    Parameters
    ----------
    file : str
        Fasta file where the sequence is stored.

    Returns
    -------
    str
        The sequence stored in file.
    """
    assert isinstance(file, str), "file must be in str !"
    assert ".fasta" in file, "file is fasta format (.fasta) !"
    with open(file, 'r', encoding='utf_8') as input_file:
        return ''.join(input_file.read().split('\n')[1:])


def reverse_comp(dna_seq):
    """Give a reverse complement DNA sequence.

    Calculate the reverse complement sequence of seq.

    Parameters
    ----------
    dna_seq : str
        Sequence of DNA

    Returns
    -------
    str
        The reverse complement sequence of seq.

    Example
    -------
    >>> reverse_comp("ATGCGTAGTCCG")
    'CGGACTACGCAT'
    >>> reverse_comp("ATCG")[::-1]
    'TAGC'
    """
    assert isinstance(dna_seq, str), "seq must be a string !"
    complement = ""
    for nuc in dna_seq:
        if nuc == "A":
            complement += "T"
        elif nuc == "T":
            complement += "A"
        elif nuc == "C":
            complement += "G"
        else:
            complement += "C"
    return complement[::-1]


def give_putative_sites(dna_seq, low, upp):
    """Give all putative sites in seq with low <= length <= upp.

    For each site as keys, we've a list with the reverse complement and index
    of apparition

    Parameters
    ----------
    dna_seq : str
        Sequence of DNA
    low : int
        Lower bound even
    upp : int
        Upper bound even

    Returns
    -------
    dict
        All putative sites with each index of apparition.

    Example
    -------
    >>> give_putative_sites("ATGCGCTAGTCCGCTAG",4,6)
    {'GCGC': [3], 'CTAG': [6, 14]}
    >>> give_putative_sites("CTGACTGACTGACTG",4,8)
    {}
    """
    sites = {}
    for length in range(upp, low-1, -2):  # site lenghts
        for k in range(0, len(dna_seq)-length+1):
            part = dna_seq[k:k+length]
            if part not in sites:
                sites[part] = [k+1]
            else:
                sites[part].append(k+1)
    # Selection of putative sites
    putative_sites = copy.deepcopy(sites)
    for site in sites:
        if site != reverse_comp(site):
            del putative_sites[site]
    return putative_sites


def reverse_dict_with_list(dic):
    """Give a dictionnary where keys and values of dic are switched.

    The values become keys, and keys become values.

    Parameters
    ----------
    dic: dict
        Dictionnary not empty

    Return
    ------
    revers_dic: dict
        Dictionnary where keys and values are switched.

    Examples
    --------
    >>> d = {"One Two": [1, 2], "Three Four": [3, 4]}
    >>> d_2 = {1: ["One"], 2: ["Two"]}
    >>> rd = reverse_dict_with_list(d)
    >>> rd
    {1: ['One Two'], 2: ['One Two'], 3: ['Three Four'], 4: ['Three Four']}
    >>> rd_2 = reverse_dict_with_list(d_2)
    >>> rd_2
    {'One': [1], 'Two': [2]}
    >>> reverse_dict_with_list(rd) == d
    True
    >>> reverse_dict_with_list(rd_2) == d_2
    True
    """
    for values in dic.values():
        assert isinstance(values, list), 'values must be list !'
    reverse_dic = {}
    for key in dic:
        for value in dic[key]:
            if value not in reverse_dic:
                reverse_dic[value] = [key]
            else:
                reverse_dic[value].append(key)
    return reverse_dic


# Main program
if __name__ == "__main__":
    doctest.testmod()
    params = sys.argv[1:]
    assert 1 <= len(params) <= 4, "read usages at the begin of the program !"
    fasta_file = params[0]
    ##
    # extraction of the sequence from the file and check -c is requested
    SEQ = extract_seq(fasta_file)
    condensed = "-c" in params  # True if condensed display is requested
    ##
    # Bounds assignment and checking parameters
    if condensed and len(params) == 4:
        a, b = int(params[2]), int(params[3])
    elif condensed and len(params) == 2 or len(params) == 1:
        a, b = 4, 12
    elif not condensed and len(params) == 3:
        a, b = int(params[1]), int(params[2])
    else:
        assert False, 'give 2 bounds !'
    assert a % 2 == b % 2 == 0, "a and b must be even !"
    assert 4 <= a <= b <= 12, "a and b such as 4 <= a <= b <= 12 !"
    ##
    # In put_sites, for each putative site we have a list of indexs apparition
    put_sites = give_putative_sites(SEQ, a, b)
    ##
    # Delete sub sites
    copy_put_sites = copy.deepcopy(put_sites)
    for s in copy_put_sites.keys():
        if s in put_sites.keys():
            for i in range(1, len(s)//2-1):
                if s[i:-i] in put_sites.keys():  # if sub site in put_site
                    if put_sites[s[i:-i]] != []:
                        for index in put_sites[s]:
                            if index+i in put_sites[s[i:-i]]:
                                put_sites[s[i:-i]].remove(index+i)
                    if put_sites[s[i:-i]] == []:
                        del put_sites[s[i:-i]]
    ##
    # Print results
    if condensed:
        for s in sorted(put_sites.keys()):
            print(f"{len(s)} {s} {len(put_sites[s])} {put_sites[s]}")
    else:
        rev_dict = reverse_dict_with_list(put_sites)
        for ind in sorted(rev_dict):
            for seq in rev_dict[ind]:
                print(f"{ind} {len(seq)} {seq} {len(put_sites[seq])}")
