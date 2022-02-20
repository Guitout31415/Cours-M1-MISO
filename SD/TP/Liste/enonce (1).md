# Les listes

Ce fichier contient l'énoncé. Notez les réponses à vos questions (qui ne sont
pas du code) dans un fichier `README.md`.

## Une classe implémentant les listes

Voici un rappel des définitions vues en cours.

### Constructeur

D'après la définition, une liste est
* soit la liste vide,
* soit un couple constitué de l'élément de tête suivi de la liste des éléments qui suivent.

Le constructeur de liste doit donc permettre de produire soit une liste vide
et pour cela aucun argument n'est nécessaire, soit une liste à partir de deux
arguments.

### Sélecteurs

Les listes non vides possèdent une tête et un reste. Il nous faut les sélecteurs pour accéder à ces
deux composantes. 


### Prédicat

Un prédicat (c'est-à-dire une fonction renvoyant un booléen `True` ou `False`)
testant la vacuité d'une liste peut s'avérer utile dans bien des
circonstances.

### La classe `List`

Vous aller coder une classe pour avoir des listes en Python dans le module
[`list.py`](./src/list.py) (que vous devez récupérer) sous la forme d'une classe. 
Nous avons fait le choix de
représenter une liste en suivant la définition donnée ci-dessus. 


### Remarque

Voici quelques relations qu'on peut établir à partir de ces opérations primitives.

   * pour toute liste ``l`` et tout élément ``x``, on a ``List(x, l).tail() == l`` et
     ``List(x, l).head() == x``,
   * et pour toute liste non vide, on a ``List(l.head(), l.tail()) == l``.

### Manipulation des listes

Dans un fichier autre que `list.py` ou directement dans l'interpréteur,
s'exercer à manipuler la structure de liste telle qu'implantée ici :
```python
    # Appelle le constructeur de la liste
    l = List()
    # Notons que bien que le constructeur ne contienne pas de `return`
    # l'appel au constructeur renvoie bien l'objet construit.
    
    # On vérifie que la liste est vide
    l.is_empty()

    # Crée une liste non vide en mettant 1 en tête et la liste précédente (vide) à la suite
    l = List(1, l)
    # On vérifie qu'il n'y a qu'un seul élément
    l.tail().is_empty()

    # On crée la liste (1, (2, (3, ())), qu'on écrit plus couramment (1, 2, 3)
    L = List(1, List(2, List(3, List())))
```

### Visualisation de la structure de donnée construite

Vous pouvez [utiliser PythonTutor](http://pythontutor.com/visualize.html) (il
faut inclure tout votre code) pour observer la structure récursive construite.


## Construire des fonctions avancées avec les primitives

Nous allons maintenant voir que les méthodes primitives définies sur
les `List` sont suffisantes pour réaliser des opérations plus
complexes.

> Pour ce faire, nous allons créer une classe `ExtendedList` qui
> permettra d'enrichir la classe `List` d'autres méthodes. La classe
> `ExtendedList` héritera de la classe `List`. A gros trait, hériter
> cela veut dire créer un nouveau type en réutilisant ce qui a été déjà
> réalisé dans la définition d'autres types.
>
> Dans le cas présent on veut étendre un type pour permettre d'ajouter
> de nouvelles fonctionnalités.

> Faire cela est facile en Python, comme vous pouvez le voir ci-dessous,
> il suffit d'indiquer dans la déclaration de classe, entre parenthèses,
> la classe de laquelle on hérite.
> ``` python
> from list import *
> 
> class ExtendedList(List):
> 
>     pass
> ```
> 
> Une fois cela fait on peut créer une `ExtendedList` comme on le
> faisait avec les `List` et utiliser les méthodes déjà définies :
> ``` python-console
> >>> l = ExtendedList(1,ExtendedList(2,ExtendedList()))
> >>> l.head() 
> 1
> >>> print(l)
> (1.(2.()))
> 
> ```
>
> Il suffit ensuite d'ajouter des méthodes. 

* Récupérer le fichier [extendedlist.py](./src/extendedlist.py) qui sera à compléter.

### Parcours de liste

On propose maintenant d'écrire un certain nombre de méthodes qui
réalisent des parcours de listes. La documentation et les doctests de
ces méthodes sont accessibles dans le fichier `extendedlist.py`.

> Notez que vous n'aurez pas d'autre choix que d'utiliser le
> constructeur et les méthodes `head`, `tail` et `is_empty` pour
> écrire les méthodes ci-dessous. En effet l'accès à l'attribut
> `__cell` de la classe `List` est interdit au sein de la classe `ExtendedList`.


- Écrire le code de la méthode `length` qui calcule de manière
  itérative la longueur de la liste.
- Écrire le code de la méthode `get` qui permet d'accéder de manière
  itérative à l'élément en position `i` dans la liste.
- Écrire le code d'un prédicat `search` qui retourne vrai si un
  élément donné en paramètre est dans la liste. Le calcul sera fait
  de manière récursive.
- Écrire le code d'une méthode `toString` retournant une
  représentation sous forme de chaîne de caractères de la liste. Le
  calcul sera fait de manière récursive.
- Écrire le code d'une méthode `toPythonList` qui construit une liste
  Python équivalente à la liste.

Toutes ces méthodes auraient aussi bien pu s'écrire itérativement que récursivement.
Le concept de liste ayant été défini récursivement, chacune des méthodes peut s'écrire
récursivement sans difficulté théorique.

  
## Type de données abstrait

Notez que pour écrire `ExtendedList` nous n'avons pas eu besoin de connaître
la manière dont était réalisée la classe `List`. Tout ce que nous avons eu
besoin de connaître ce sont les primitives (`is_empty`, `head`, `tail`, etc.).

Question : imaginons que nous aimions une méthode `append` dans une
`ExtendedList`. Pourquoi utiliser cette méthode ne serait pas recommandé pour
ajouter des éléments dans la liste ? Comment faudrait-il faire ?

## Utilisation des fonctions spéciales de Python

Afin de pouvoir utiliser nos `ExtendedList` comme des « listes » Python
(c'est-à-dire pouvoir faire des `for i in l` ou des `l[i]`), nous allons
devoir ajouter des méthodes spéciales dans la classe `ExtendedList`.

- la méthode `__str__` doit renvoyer une représentation de l'objet sous forme de chaîne de caractères
- la méthode `__len__` permet d'appliquer la fonction `len` à un objet et doit donc renvoyer la longueur de la liste
- la méthode `__getitem__` permet l'écriture avec `[i]` pour obtenir l'élément en position `i`, et donc donc renvoyer cet élément (pour un entier `i` passé en paramètre)
- les méthodes `__next__` et `__iter__` permettent l'écriture de boucle `for elt in`

Récupérer le code ci-dessous, le compléter, et l'ajouter au code de la classe `ExtendedList`

``` python
    def __str__ (self):
    
    def __getitem__ (self,i):

    def __len__ (self):

    def __iter__ (self):
        """
        Implantation très sommaire d'un itérateur. Ne permet pas d'itérer
        sur la même liste dans une boucle imbriquée.
        """
        self.__iter = self
        return self

    def __next__ (self):
        try:
            # On utilise la variable self.__iter (qui correspond à la liste qu'on itère)
            # Il s'agit de renvoyer la valeur de la tête de cette liste et de modifier
            # self.__iter pour qu'elle corresponde maintenant au reste de la liste
            # (afin d'avancer dans celle-ci).
            # Attention à l'ordre dans lequel vous faites les opérations.
        except:
            raise StopIteration
        

```

## Utilisation de vos listes

Dans un nouveau fichier, nous allons maintenant utiliser les listes réalisées
et les comparer aux « listes » Python.

Pour cela prenez la classe `Gene` qui vous est fournie (fichier `gene.py`).

Sur [Ensembl](http://www.ensembl.org/index.html), chargez le GFF de la souris (cliquez sur l'espèce puis dans la section annotation cliquez sur le lien pour télécharger les GFF, ce qui vous amène sur le FTP sur lequel le fichier est accessible).
Si vous le souhaitez, pour récupérer le fichier en ligne de commande vous pouvez procéder ainsi (en remplaçant `URL` par l'adresse à laquelle se trouve le GFF à télécharger) : 
```shell
wget -O- URL | gunzip -c > mouse.gff3
```
* La commande `wget` va permettre de télécharger le fichier, avec l'option `-O -` qui enverra le résultat sur la sortie. 
* Cette sortie est envoyée à l'entrée de la commande `gunzip` qui va décompresser le fichier. 
* La sortir de la commande `gunzip` est envoyée dans un fichier `mouse.gff3` qui contiendra donc notre fichier `gff` décompressé.

À partir de ce GFF, nous allons récupérez chaque gène du GFF et l'insérez dans
une `ExtendedList` ainsi que dans une liste Python.  Voici le code pour ce
faire, que vous placerez un fichier `experiences.py` (notez que nous avons
besoin de la classe `Gene`…) :

```python
def load_gff(filepath, gene_list, is_extended_list):
    gff = open(filepath)
    for line in gff.readlines():
        fields = line.split('\t')
        if len(fields) > 3 and fields[2] == "gene":
            g = Gene.from_gff(line)
            if g:
                if is_extended_list:
                    # Notez qu'on ne peut pas faire de append pour les ExtendedList
                    # mais ce n'est pas grave, à la place on ajoute en tête.
                    gene_list = ExtendedList(g, gene_list)
                else:
                    gene_list.append(g)

    return gene_list
```


Nous allons procéder à une expérience pour comparer le temps
d'exécution des deux fonctions ci-dessous (que vous complèterez):

``` python
def nb_gene_lengths_1(gene_list, min_length, max_length, n):
    '''
        Return the number of genes whose length is between min_length and max_length
        among the n first genes.
    '''
    nb = 0
    for i in range(len(gene_list)):
        if n == i:
            return nb
        ## A COMPLETER
        ## Si le gène a une longueur comprise entre la longueur min
        ## et max, incrémenter le compteur
        
    return nb

def nb_gene_lengths_2(gene_list, min_length, max_length, n):
    '''
        Return the number of genes whose length is between min_length and max_length
        among the n first genes.
    '''
    nb = 0
    i = 0
    for gene in gene_list:
        if n == i:
            return nb
        ## A COMPLETER
        ## Si le gène a une longueur comprise entre la longueur min
        ## et max, incrémenter le compteur
        
        i += 1
    return nb
```

La différence est simplement la manière dont nous accédons aux
éléments successifs :
- d'un côté en accédant aux éléments par leur indice
- d'un autre côté en itérant sur les éléments


## Expérimenter

**Attention** les expériences qui suivent peuvent prendre du temps. Vous voulez peut-être essayer sur une petite fraction du fichier pour commencer.

Pour prendre les 1000 premières lignes de votre fichier et l'enregistrer dans un autre fichier, dans le terminal vous pouvez faire : 

```shell
head -n 1000 mouse.gff3 > mouse-1000.gff3
```

Nous allons maintenant évaluer la rapidité de ces fonctions avec
  - des listes contenant 10%, 20%, ..., 100% des gènes
  - avec des listes de type `ExtendedList`
  - avec des « listes » de Python
  
On en profitera pour calculer également le temps des deux fonctions pour les deux types de listes.

Le module `timeit` permet de calculer le
temps mis par une fonction. Le paramètre `number` de la fonction
`timeit` permet de demander la répétition de l'expérience un certain
nombre de fois. Pour une expérimentation qui fasse du sens, il faut
bien sûr que ce nombre soit plus grand que 1. On remarquera que c'est
le temps total qui est retourné par `timeit`, pas le temps moyen.

``` python
        d = timeit.timeit(lambda: somme_des_elements_1(l), number = 1)
```

- comparer les temps d'exécution en utilisant les listes natives de Python et notre implantation

Pour observer l'évolution des temps d'exécution, vous pouvez tracer un
graphique de ces temps, en utilisant `pylab` (module qu'il faut importer). Il
pourrait être utile de tracer un graphique avec une échelle logarithmique sur
l'axe des ordonnées, ce qui nécessitera d'utiliser `pylab.semilogy(data_x,
data_y)`, où `data_x` sont les données en abscisse et `data_y` les ordonnées.

Ensuite `pylab.show()` vous permet de visualiser le graphique. Par exemple :

```python
pylab.semilogy([0, 1, 2, 3, 4, 5], [10, 11, 1, 5, 15, 20])
pylab.legend(['courbe'])
pylab.show()
```
La méthode `pylab.legend`, qui prend une liste (Python !) des légendes en paramètre, permet d'afficher une légende.
Pour enregistrer une image remplacer `pylab.show()` par `pylab.savefig` en donnant un nom de fichier en paramètre.
Utilisez cela pour enregitrer automatiquement les différents graphiques que vous faites.


- comparer les temps d'exécution des deux fonctions pour notre implantation, pouvait-on s'attendre au résultat observé ?
- comparer les temps d'exécution des deux fonctions pour les listes natives de Python, pouvait-on s'attendre au résultat observé ?


## Conclusion

En réalité, la structure de liste en Python n'est pas celle que nous croyons. Ce n'est pas la structure de données communément appelée liste. Celle-ci ressemble plus à un tableau qu'à une liste. 

**Quelles différences ?**

Dans un tableau les éléments sont alloués de manière consécutive en mémoire, ce qui fait que la complexité d'accès au i-ème élément est attendue en temps constant : un simple calcul d'adresse permet d'y accéder. L'inconvénient est que le tableau ne peut être redimensionné. Alors que dans la liste, les éléments sont alloués à chaque fois qu'un élément est ajouté en tête, ce qui fait qu'ils ne sont pas nécessairement alloués consécutivement. Il est nécessaire de parcourir la liste pour accéder au i-ème. 

En Python la structure est plus complexe. Pour garantir une bonne efficacité la liste Python utilise des tableaux tout en permettant un redimensionnement (i.e. l'ajout d'un nouvel élément). Pour comprendre comment cela fonctionne on pourra se plonger dans le code C de l'implantation de Python ou bien [lire ceci (an anglais)](https://www.laurentluce.com/posts/python-list-implementation/).

Vous aurez peut-être noté également que l'itération est plus rapide avec les
« listes » natives de Python plutôt qu'avec nos ExtendedList. Cela peut
sembler étrange puisque dans les deux cas l'opération est en temps constant.
La différence tient aux accès mémoire. Deux cases consécutives dans un tableau
sont consécutives en mémoire. Récupérer la case suivante est donc très peu
coûteux car une partie, voire la totalité, du tableau a été placée dans la mémoire cache. À
l'inverse, pour accéder à l'élément suivant d'une `ExtendedList`, il est
nécessaire d'accéder à une autre `ExtendedList` qui peut (ou pas) être
consécutive en mémoire. Avec les `ExtendedList` il est possible qu'il y ait
besoin d'aller chercher l'objet dans la mémoire centrale, et non dans la mémoire cache
du processeur, ce qui est une opération bien plus coûteuse. Cela explique les
différences de temps observées entre l'itération sur des `ExtendedList` et avec des « listes »
natives Python.
