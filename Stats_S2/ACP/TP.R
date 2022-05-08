load("nutrimouse.rda")
install.packages(c("FactoMineR", "factoextra"))
library(FactoMineR)
library(factoextra)

# Question 1 : Quelles vont être nos variables actives? Quelles variables supplémentaires vous semblent pertinentes ?*
#Comme notre étude se porte sur les données génétiques, nos variables actives vont être les données d'expression des 120 gènes.
#Nous disposons de deux variables concernant les souris qui pourraient être intéressantes comme variables supplémentaires : le génotype et le régime alimentaire.
#Le génotype risquant fortement d'influer sur les données d'expression génétique, il est important de le considérer.

#========================================================================

# Question 2 : Faut-il centrer et/ou réduire les données ?
#On centre toujours les données pour réaliser une ACP, car le centrage ne déforme pas le nuage de point, il le déplace simplement.
#La réduction est nécessaire si on utilise des variables avec différentes unités, ce n'est pas le cas ici.
#Néanmoins cela est pratique pour l'interprétation donc nous réduisons les données.

#========================================================================

# Question 3 : Réaliser une ACP sur nos données génétiques et interprétez les graphes.
data <- cbind(nutrimouse$gene, nutrimouse$genotype, nutrimouse$diet)
res <- PCA(data, scale.unit=T, graph=T, quali.sup=c(121,122))
#121 -> variable génotype
#122 -> régime alimentaire
#Les variables qualitatives supplémentaires sont affichées en rose sur le graphe des individus.

#========================================================================

# Question 4 : Visualisez les pourcentage d'inertie des différents axes
fviz_eig(res, main="Pourcentage d'inertie expliqué par chaque axe", addlabels=T)
#Si on se réfère au tableau des quantiles à 95% du pourcentage d'inertie pour des variables indépendantes pour 150 variables 
#(120 n'est pas dans le tableau) et 40 individus, les deux premiers axes d'une ACP sur des variables indépendantes expliqueraient 11,1%
#la variabilité expliquée par ce plan est élevée.

#========================================================================

# Question 5 : Créer un graphe des individus coloré en fonction de la variable genotype et interprétez le graphe obtenu.
fviz_pca_ind(res, habillage=121)
#Le deuxième axe sépare nettement les individus selon leur génotype, les souris sauvages sont en haut du graphe et les souris transgéniques en bas.
#Ce deuxième axe explique 15,9% de la variabilité.

#========================================================================

# Question 6 : Faire de même pour la variable diet.
fviz_pca_ind(res, habillage=122)
#Là, pas d'effet visible du régime alimentaire auquel ont été soumises les souris si on regarde de manière globale.

#========================================================================

# Question 7 : Étudiez les individus contribuant beaucoup puis un graphe des individus avec les individus contribuant le plus, étudiez l'effet du régime alimentaire.
fviz_contrib(res, choice = "ind")
#La ligne pointillée rouge indique le niveau qu'aurait la contribution de chaque individu si elles étaient également réparties.
#Les valeurs de contribution au-dessus de cette ligne sont considérées comme élevées.
#On a 14 individus qui contribuent beaucoup à l'axe 1, avec une contribution supérieure à 2,5.
fviz_pca_ind(res, select.ind = list(contrib = sum(res$ind$contrib[,1]>2.5)))
#Les individus contribuant le plus se séparent bien, on a quatre groupes,
#avec un groupe qui prend des valeurs particulièrement élevées sur l'axe 1 chez les PPAR.
fviz_pca_ind(res, select.ind = list(contrib = sum(res$ind$contrib[,1]>2.5)), habillage = 122)
#Comme nous l'avions pressenti, certains régimes ont des effets opposés selon le génotype,
#c'est le cas pour fish, lin, mais pas pour sun où quel que soit le génotype les individus sont bas sur l'axe 1

#========================================================================

# Question 8 : Tracez le graphe des contributions des variables et le graphe des variables avec uniquement les gènes qui contribuent particulièrement
fviz_contrib(res, choice = "var")
fviz_pca_var(res, select.var = list(contrib = sum(res$var$contrib[,1]>0.8)))
#On a 63 gènes qui contribuent particulièrement à la construction de l'axe 1.
#Parmi ceux-ci CAR1 est fortement corrélé négativement à l'axe 2.
#L'étude des gènes qui contribuent beaucoup et qui ont une forte corrélation positive 
#(>0.6) significative à l'axe 1 ne va pas pouvoir se faire sur le graphe, ils sont trop nombreux.

#========================================================================

# Question 9 : Utilisez la fonction dimdesc() et analysez le résultat.
dimdescrip <- dimdesc(res, axes = 1:2, proba = 0.05)
dimdescrip
#affiche pour chacun des axes considérés (par défaut 1 à 3) si la p-valeur est significative au seuil choisi 

rmarkdown::paged_table(data.frame(dimdescrip$Dim.1$quanti[abs(dimdescrip$Dim.1$quanti[,1])>0.6,]))

#========================================================================
# Question 10 :
summary(res$var$cos2)
res$var$cos2["ACAT2",]
#Certaines variables sont mal projetées, la qualité de leur représentation par rapport à un axe est faible, 
#nous ne pouvons pas les interpréter. Par exemple ACAT2 que nous avons mentionné précédemment est extrêmement mal projeté dans notre plan.


