install.packages("nlme")
library(nlme)
data("Orthodont")
head(Orthodont)

# Question 1 :
str(Orthodont)
# dist -> numeric
# age -> numeric
# Subject -> factor ordonnée
# Sex -> factor (1=male, 2=female)
# Car le sexe peut avoir un effet aléatoire

# Question 2 :
plot(Orthodont, outer=~1)

# Question 3 :
fit.lme <- lme(distance~age,data=Orthodont,random=~1|age)
summary(fit.lme)
fit.lme$coefficients
# Yi = b0 + b1*age + coeff$random*age + residus

# Question 4 :
fit.lme_REML <- lme(distance~age,data=Orthodont,random=~1|age)
fit.lme_ML <- lme(distance~age,data=Orthodont,random=~1|age, method = "ML")
summary(fit.lme_REML)
summary(fit.lme_ML)
fit.lme_REML$coefficients
fit.lme_ML$coefficients
# Ici, il n'y a pas de grandes différence entre ML et REML
# AIC de ML est un peu plus petit que AIC_REML, donc ML et un peu mieux que REML

# Question 5 :
plot(Orthodont, outer=~Sex)
# On observe une différence dans l'évolution de la variable distance dans le temps en fonction du sexe

# Question 6 : 











