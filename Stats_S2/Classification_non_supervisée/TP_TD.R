load("nutrimouse.rda")

# Question 1 :

# Question 2 :
X <- matrix(c(5,4,4,5,1,-2,0,-3), ncol=2, byrow=T)
km <- kmeans(X, centers=X[1:2,])

# Question 3 :

# Question 4 :
d_euc <- dist(X)
clust_euc <- hclust(d_euc, method="complete")
plot(clust_euc)

# Question 5 :
d_man <- dist(X, method="manhattan")
clust_man <- hclust(d_man, method="complete")
plot(clust_man)

# Question 6 :
d_euc <- dist(t(nutrimouse[[1]]))
clust_euc <- hclust(d_euc, method="complete")
clust_ward <- hclust(d_euc, method="ward.D2")
plot(clust_euc)
plot(clust_ward)

# Question 7 :
plot(clust_ward$height, type="b", ylab='Hauteur de la branche', xlab="Nombre de clusters")
plot(clust_ward$height[120:100], type="b", ylab='Hauteur de la branche', xlab="Nombre de clusters")
n_clust <- 7
cutree(clust_ward, k=n_clust)
plot(clust_ward)
rect.hclust(clust_ward, k=n_clust)

# Question 8 :
sort(cut)
names(cut[cut==2])

# Question 9 :
tab_cor <- cor(nutrimouse[[1]])
d_cor <- as.dist(1-tab_cor)
clust_ward <- hclust(d_cor, method="ward.D2")
plot(clust_ward)
plot(clust_ward$height, type="b", ylab='Hauteur de la branche', xlab="Nombre de clusters")
plot(clust_ward$height[120:100], type="b", ylab='Hauteur de la branche', xlab="Nombre de clusters")
n_clust <- 9
plot(clust_ward)
rect.hclust(clust_ward, k=n_clust)

# Question 11 :
d_euc <- dist(nutrimouse[[1]])
clust_ward <- hclust(d_euc, method="ward.D2")
plot(clust_ward)
plot(clust_ward$height, type="b", ylab='Hauteur de la branche', xlab="Nombre de clusters")
plot(clust_ward$height[40:20], type="b", ylab='Hauteur de la branche', xlab="Nombre de clusters")
n_clust <- 8
plot(clust_ward)
rect.hclust(clust_ward, k=n_clust)
colored_bars(data.frame("diet" = as.numeric(nutrimouse$diet), "genotype" = as.numeric(nutrimouse$genotype)), dend = clust_ward)

# Question 12 :
colored_bars(data.frame("diet" = as.numeric(nutrimouse$diet), "genotype" = as.numeric(nutrimouse$genotype)), dend = clust_ward)

# Question 13 :
km <- kmeans(t(nutrimouse[[1]]), centers=6, nstart=5)
print(km)

# Question 14 :
table(clust_ward,km$cluster,dnn=c("tree","kmeans"))

