setwd('C:/Users/lemai/Desktop/Cours-M1-MISO/Stats_S2/Régression_logistique/')
install.packages('ggplot2')
library(ggplot2)
install.packages('RORC')
library(RORC)
install.packages('plotROC')
library(plotROC)
load('data_premature.RData') # Charger la data .RData
# On chercher à expliquer prema$PREMATURE en fonction des autres variables

#########Exercice 1
# 13)
model.1 <- glm(prema$PREMATURE~prema$GEMEL, family="binomial", data=prema)
model.2 <- glm(prema$PREMATURE~prema$EFFACE, family="binomial", data=prema)
model.3 <- glm(prema$PREMATURE~prema$GEMEL+prema$EFFACE, family="binomial", data=prema)
model.3

# 14)
test_vraissemblance <- anova(model.2, model.3, test="LRT")
test_vraissemblance
# Pr(>Chi) = p-value < 0.005 => on rejette H0, ce modèle n'a pas d'intérêt

# 15)
fullmodel <- glm(prema$PREMATURE~., family="binomial", data=prema)
fullmodel

# 16) On regarde la valeur de AIC

# 17)
reduced <- step(fullmodel)
summary(reduced)
test_vraissemblance <- anova(fullmodel, reduced, test="LRT")
test_vraissemblance

# 18)
AIC_model.2 <- model.2$aic
AIC_model.3 <- model.3$aic
AIC_fullmodel <- fullmodel$aic
AIC_reduced <- reduced$aic
# Reduced à le plus petit AIC, il est donc le meilleur modèle

# 19)
plot_odds<-function(x, title = NULL){
  tmp<-data.frame(cbind(exp(coef(x)), exp(confint(x))))
  odds<-tmp[-1,]
  names(odds)<-c('OR', 'lower', 'upper')
  odds$vars<-row.names(odds)
  ticks<-c(seq(.1, 1, by =.1), seq(0, 10, by =1), seq(10, 100, by =10))
  
  ggplot(odds, aes(y= OR, x = reorder(vars, OR))) +
    geom_point() +
    geom_errorbar(aes(ymin=lower, ymax=upper), width=.2) +
    scale_y_log10(breaks=ticks, labels = ticks) +
    geom_hline(yintercept = 1, linetype=2) +
    coord_flip() +
    labs(title = title, x = 'Variables', y = 'OR') +
    theme_bw()
}
plot_odds(reduced)
# GEMEL, DILATE et EFFACE sont des facteurs de risque car leurs intervalles > 1
# GEST, PARIT, MEMBRANNon sont des facteurs de protecteurs car leurs intervalles < 1
# Les autres coupent 1, donc il n'y a pas d'effets

#########Exercice 2
S <- predict(reduced, prema, type="response")








