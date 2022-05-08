data("trees")
pairs(trees)
str(trees)
reg <- lm(formula = Volume ~ Girth + Height, data = trees)
summary(reg)

# Exercice 1
# Question 1 :
# n = 31

# Question 2 :
# b2 = 0.34

# Question 3 :
# Oui, hautement significative ***

# Question 4 :
confint(reg, level=0.95)[3,]
# I=[0.073 ; 0.606]

# Question 5 :
# R2 = 0.948
# R2 ajuste = 0.9442

# Question 6 :
# f_obs = 255
# p-val = 2.2e-16
# H0 : tout les bi=0

# Question 7-A :
predict(reg, data.frame(Girth = 8.3, Height = 70))
Vol = -57.9877+4.7082*8.3+0.3393*70
Vol

# Question 7-B :
predict(reg, data.frame(Girth = 8.3, Height = 70), interval = "confidence")
# I=[2.13 ; 7.54]

# Question 8 :
res <- residuals(reg)
plot(res)
abline(h = 0, col = "red")
# Pas une symétrie autour de l'axe y = 0 => les résidus sont dépendants ?

# Question 9 :
# Règle de Klein : Si le carré du coefficient de corrélation est supérieur au R^2,
# on peut soupçonner de la colinéarité.
cor2 <- cor(trees$Girth, trees$Height)^2
# 0.26 < R2=0.948, il n'y a pas de lien linéaire entre Girth et Height.

# Question 10-A :
cook <- cooks.distance(reg)
cook[cook>1]
# aucune distance>1, pourtant le graphique des résidus montrait un point éloigné des autres.
# On peut donc regarder d'autres critères

# Question 10-B :
summary(influence.measures(reg))
# L'individus 31 est chelou, on va peut-etre le goummer s'il est trop different des autres.

#===================================================================
# Exercice 2
mydata <- trees
set.seed(25012021)
mydata$X3 <- rnorm(n = nrow(trees), mean = 30, sd = 1)
set.seed(25012021)
mydata$X4 <- rnorm(n = nrow(trees), mean = 60, sd = 3)
str(mydata)

reg1 = lm(Volume ~ Girth + Height + X3 + X4, data = mydata)
reg2 = lm(Volume ~ Girth + Height, data = mydata)
anov <- anova(reg1, reg2)

# Question 1 :
# p-val = 0.84, on ne rejette pas H0, donc les nouveaux coefficient ner servent à rien
# on conserve alors l'ancien modèle

# Question 2 :
AIC(reg1)
BIC(reg1)
AIC(reg2)
BIC(reg1)
# AIC_reg1 > AIC_reg2 
# BIC_reg1 = BIC_reg2
# On conserve le reg2 car AIC plus petite, ça ne change pas la conclusion du test

#===================================================================
# Exercice 3
T2Ddata <- data.frame(
  weight = c(35.9, 38.3, 55.7, 41.7, 43.2, 49.1, 45, 45.3, 46.1, 46.9, 48.1, 
             48.9, 49.2, 51.2, 56.4, 51.7, 51.8, 52.6, 52.9, 51.3, 53.7, 55, 
             55.4, 55.8, 58, 58.7, 60.3, 61.1, 61.5, 63.1), 
  CC = factor(x = c(rep("0", 15), rep("1", 15)), levels = c("0", "1"), labels 
              = c("CTRL", "CAS")) 
)
str(T2Ddata)

# Question 1 :
plot(T2Ddata)

# Question 2 :
reg_log <- glm(CC~weight, data=T2Ddata, family = binomial(link = "logit"))
summary(reg_log)

# Question 3 :
OR <- exp(reg_log$coefficients)
OR
# L'augmentation d'une unité de weight entraîne une augmentation des chances que {CC = 1} se réalise,
# L'augmentation du poids augmente le risque de venir diabetique, selon nos données.

# Question 4 :
T2Ddata2 <- data.frame(
  weight = sort(c(35.9, 38.3, 55.7, 41.7, 43.2, 49.1, 45, 45.3, 46.1, 46.9, 48.1, 
                  48.9, 49.2, 51.2, 56.4, 51.7, 51.8, 52.6, 52.9, 51.3, 53.7, 55, 55.4, 55.8,
                  58, 58.7, 60.3, 61.1, 61.5, 63.1)), 
  CC = factor(x = c(rep("0", 15), rep("1", 15)), levels = c("0", "1"), labels 
              = c("CTRL", "CAS")) 
)
str(T2Ddata2)
plot(T2Ddata2)
reg_log <- glm(CC~weight, data=T2Ddata2, family = binomial(link = "logit"))
summary(reg_log)
OR <- exp(reg_log$coefficients)
OR
# L'OR de weight "explose"
# Ici la modélisation n'était pas pertinente car la partition entre les 2 groupes
#était totale selon la mesure utilisée dans le modèle.

#===================================================================
# Exercice 4
str(esoph)
model1 <- glm(
  cbind(ncases, ncontrols) ~ agegp + tobgp * alcgp,
  data = esoph, family = binomial(link = "logit")
)
summary(model1)
anova(model1, test = "Chisq")
model2 <- glm(
  cbind(ncases, ncontrols) ~ agegp + unclass(tobgp) + unclass(alcgp),
  data = esoph, family = binomial()
)
summary(model2)
anova(model2, test = "Chisq")
