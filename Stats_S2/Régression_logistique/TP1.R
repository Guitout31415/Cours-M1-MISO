setwd('C:/Users/lemai/OneDrive/Bureau/Cours-M1-MISO/Stats_S2/Régression_logistique/')
library(ggplot2)
install.packages('ggmosaic')
library(ggmosaic)
load('data_premature.RData') # Charger la data .RData
# On chercher à expliquer prema$PREMATURE en fonction des autres variables

#########Exercice 1
summary(prema) # Avoir un résumé de la data

#########Exercice 2
# 2)
contingence_table <- addmargins(table(prema$PREMATURE, prema$GEMEL))
contingence_table

# 3)
proba <- (35/388)/(39/388) # P(pos | mult) = P(pos & mult)/P(mult) = (35/388)/(39/388)
proba
frequence_contingence_table <- prop.table(table(prema$PREMATURE, prema$GEMEL), margin=2)
# frequence_contingence_table <- prop.table(table(prema$GEMEL, prema$PREMATURE), margin=1) 
# margin=1 -> proba colonne sachant ligne
# margin=2 -> proba ligne sachant colonne
frequence_contingence_table

# 4)
plot(prema$PREMATURE~prema$GEMEL)

# 5)
model.1 <- glm(prema$PREMATURE~prema$GEMEL, family='binomial', data=prema)
model.1
beta.0 <- model.1$coefficients[[1]]
beta.1 <- model.1$coefficients[[2]]
# GEMEL=simple <=> GEMEL=0 | GEMEL=multiple <=> GEMEL=1
# P(pos | simple) = exp(beta.0+0*beta.1)/(1+exp(beta.0+0*beta.1)) = 0.6590258
# P(pos | multiple) = exp(beta.0+1*beta.1)/(1+exp(beta.0+1*beta.1)) = 0.8974359

# 6)
summary(model.1)
contingence_table # Notre variable GEMEL est significative avec une p-valeur < 0.01
odd_ratio <- exp(beta.1)
odd_ratio <- 119*35/(230*4)

#########Exercice 3
# 7)
by(prema$EFFACE, prema$PREMATURE, mean)

# 8)
plot(prema$PREMATURE~prema$EFFACE)

# 9)
model.2 <- glm(prema$PREMATURE~prema$EFFACE, family="binomial", data=prema)
model.2
PI <- function(x){
  beta.0 <- model.2$coefficients[[1]]
  beta.1 <- model.2$coefficients[[2]]
  exp(beta.0+x*beta.1)/(1+exp(beta.0+x*beta.1))
}
proba <- PI(60)
proba
plot(PI,0,100)
abline(v=60, col='red')
abline(h=PI(60), col='red')
