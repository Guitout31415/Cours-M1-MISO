04-03-2022
Par LEMAIRE Guillaume et LUONG Tony 

-------------
Script Seq.py
-------------
Contient une classe DnaSeq et sa classe fille OrfSeq qui permettent de travailler autour de séquences et
ORFs. Une classe SequenceError est aussi dans le script, permettant de renvoyer une erreur dans le cas
où une supposé séquence n'est pas une séquence ADN.

La classe DnaSeq contient l'identifiant, la description et la séquence d'ADN pouvant provenir d'un fichier.
Elle contient les méthodes suivantes :
- set_codon_table : Permet de construire un dictionnaire représentant une table de codon depuis un fichier Fi
afin de converture une séquence d'ADN en séquence protéique
- computeORF : Permet d'obtenir des ORFs d'une longueur minimale définie, contenues dans une séquence. 
Est utilisé en conjonction avec la méthode reverse_complement pour aussi obtenir les ORFs du brin complémentaire.
Ces ORFs seront stocké en tant qu'objets OrfSeq.


La classe OrfSeq possède ORFs pouvant être obtenus depuis une séquence grâce à computeORF. Ces ORFs contiennent
la séquence, leur position start et end respectifs, le brin (+ ou -) duquel ils appartiennent, leur cadre de lecture
et leur score.
OrfSeq contient les méthodes suivantes :
- set_codon_table permettant d'utiliser une table de codon qui sera utilisé pour la conversion d'une séquence ADN à séquence protéique
- compute_score_codon calculant le score de chaque codons depuis une table de comptage de codons
- scoreORF qui va calculer le score d'un objet ORF.

--------------------
Simple_ORF_Finder.py
--------------------
Contient le programme principal qui va utiliser le module Seq afin de trouver des ORFs dans une séquence donné.

Ce module contient les fonctions suivantes :
- parseFasta, qui permet de lire un fichier Fi pour y en extraire les informations de séquence, qui vont être utilisés
par des méthodes du module Seq et des fonctions du module Simple_Orf_Finder.
- search_orf_in_interval qui permet de trouver les ORFs qui sont situés dans un intervalle de positions défini.
- display_orf affichant les ORFs dans un format GFF, que ce soit sur le terminal ou dans un fichier de sortie.
- computeORFscore calculant le score de tous les ORFs contenus dans une liste d'ORFs. Cette fonction est utilisé en conjonction
avec un paramètre qui est la fonction read_usage_table qui permet de lire une table de comptage de codons permettant
de calculer le score.
- maximiseORFscore qui va calculer le score le plus haut possible de tous les ORFs, en excluant celles qui se chevauchent
 Cette fonction utilise des fonctions qui permettent de calculer ce score max :
  -> is_separated, qui permet de déterminer si deux ORFs se chevauchent ou non
  -> first_no_intersection, qui permet de trouver l'ORF la plus proche d'une ORF en question
  -> SORF qui va calculer le score maximal des ORFs qui ne se chevauchent pas après lecture des premières ORFs non-chevauchantes.
  -> rechercheRBS qui va vérifier la présence du motif RBS "GGAGA" associé à chaque ORFs
Le module possède un main qui permet de faire tourner le programme.

On y retrouve dans ce main, des arguments (via le module ArgParse) qu'on peut mettre dans le terminal, qui vont être utilisés en tant
que paramètres qui seront intégrés aux fonctions utilisés dans ce programme principal.

Parmi ces paramètres, on a ceux qui sont obligatoires:
-> -f, correspondant à un fichier fasta ou multifasta contenant un génome 
-> -c, prenant une table de comptage de codons
-> -t, prenant une table de conversion de codons en acides aminés
-> -m, la matrice de poids "GGAGA"

Et ceux qui sont facultatifs :
-> -o, qui est le fichier de sortie contenant les résultats obtenus par la fonction displayORF, affichant les ORFs en format gff.
 Par défaut, les résultats de displayORF seront affichés dans le terminal
-> -s, correspondant à la taille minimum des ORFs qu'on veut obtenir.
 Par défaut, la taille minimum définie sera de 300
-> -i, qui va prendre un couple de nombres qui vont définir l'intervalle de positions qui va prendre les ORFs dont leur position de début 
 y est contenu à l'intérieur.

--------------------------
Faire tourner le programme
--------------------------
Le programme tourne grâce au terminal. On peut utiliser comme commande:

python3 Simple_ORF_Finder.py -f GCF_000009045.1_ASM904v1_partial_genomic.fna -c E_coli_K12_MG1655_CDS_table -t code_genetique_bacteries -m matrice_GGAGA_RBS_E_coli
_______________________________________________________________________________________________________________________________________________
On obtient ainsi, comme résultat :
_
Lancement du programme de recherche d'ORF :

Le score maximal est de 3218.182382049709 et voici les ORFs non-chevauchantes qui en sont à l'origine au format gff:

NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      108     524     12.300423352304156      -  0
NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      2801    3733    69.82704942352872       +  1
NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      3734    5020    134.6701641650279       +  1
NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      5310    5618    19.155519861843036      -  0
....
....
NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      36271   37560   117.69274905284975      -  2
NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      37898   39115   122.75252732254879      -  1
NC_000913.3     Simple_ORF_Finder       Escherichia coli str. K-12 substr. MG1655, partial      39244   39807   59.363533443013424      -  2

Après l'affichage du score maximal, chaque lignes correspondent a une ORF.
Ici NC_000913.3 correspond à l'identifiant, Simple_ORF_Finder est le programme utilisé pour obtenir la sortie et "Escherichia coli str. K-12 substr. MG1655, partial"
est la description de la séquence.
La 4ème et 5ème colonne représentent respectivement les positions start et stop de l'ORF, la 6ème colonne représente le score de l'ORF, la 7ème colonne
représente au brin dans lequel l'ORF appartient et la dernière colonne correspond à la phase de lecture.

-

On peut utiliser la même commande mais en ajoutant '-o [nom de fichier]' qui permet d'obtenir les résultats de displayORF mais dans un fichier de sortie qui sera généré.

python3 Simple_ORF_Finder.py -f GCF_000009045.1_ASM904v1_partial_genomic.fna -c E_coli_K12_MG1655_CDS_table -t code_genetique_bacteries -m matrice_GGAGA_RBS_E_coli -o exemple.txt
__________________________________________________________________________________________________________________________________________________________________________________
On y obtient comme résultat :
-
Le score maximal est de 3218.182382049709 et les ORFs non-chevauchantes qui en sont à l'origine sont écrite dans exemple.txt.

Le reste du résultat sera dans le fichier output qui serait crée.











