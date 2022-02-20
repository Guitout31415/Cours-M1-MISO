import sys
from protein import Protein


if __name__ == "__main__":
    params = sys.argv[1:]
    pro = Protein(params[0])
    res = {}
    for aa in set(str(pro)):
        res[aa] = pro.my_count(aa)/len(str(pro))
    for (k,v) in res.items():
        print(f"{k} {v}")
        
    