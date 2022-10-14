TP Table de hachage et filtre BLOOM
LEMAIRE Guillaume M1 MISO

Sur le graphe "Analyse des filtres de Bloom"

On constate premierement que plus la taille du filtre est grande, plus le pourcentage de positifs diminue.
Cependant, quand la taille du filtre est petite, avoir trop fonction de hachage n'est pas efficace car le filtre se remplit trop vite, augmentant donc le nombre de 1 dans le filtre, et donc le pourcentage de faux positif.

Pour une taille de filtre <12, il faut 1 ou 2 fonctions de hachage. On peut donc en prendre 1 pour réduire le temps de calcul
Pour une taille de filtre =12, il faut 2 ou 3 ou 4 fonctions de hachage. On peut donc en prendre 2.
Pour une taille de filtre =13, il faut avoir plus d'1 fonction de hachage.
Pour une taille de filtre >=14, 2 fonctions de hachage suffisent.
