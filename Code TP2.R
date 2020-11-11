data=read.csv("GPA.csv",header =TRUE,sep=";",dec =",")

dim(data)
high=data$high_GPA
univ=data$univ_GPA

moy <- function (z){
  n <- length(z)
  zbar <-sum(z)/n
  return (zbar)
}

moy(high) ; moy(univ)
mean(high) ; mean(univ)

variance = function (z){
 var=mean(z^2)-mean(z)^2
  return (var)
}

# ou aussi

variance = function (z){
  n=length(z)
  var=sum((z-mean(z))^2)/n
  return(var)
}

variance(high)    
sqrt(variance(high))   # ecart-type

# leur dire que la fonction var de R calcule la variance corrigée 
# (estimateur sans biais à voir en L3) on divise par n-1 et pas n
# si n est grand var et notre fonction variance donne même résultat

summary(high)
summary(univ)

#leur montrer les fonctions median, min, max, quantile

boxplot(high,univ,names=c('secondaire','universitaire'),col=c("red","blue"))

par(mfrow=c(1,2))
hist(high)
hist(univ)

# on peut ajouter l'argument prob=T pour un histogramme en fréquence


