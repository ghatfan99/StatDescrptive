# 5.1
## (i)
x=c(1,4,4,4,8,4,1,1,1,8)
y=c(-16,16,16,16,9,16,-16,-16,-16,9)
## (ii) Calculer le coeicient de corrélation Rxy
cor(x,y)
# 0.7132086 les deux varaibles sont fortement corrélées
## (iii) Faire le tableau de contingence
continegence = table(x,y)
## (iv) calculer la statistique de Chi-2
chisq.test(continegence) # p-value = 0.0004994
# On note que la p-value donnée par le test du χ 2 est très petite : 
# p-value = 0.0004994. Inférieure à 5%, elle confirme la dépendance 
# des variables.
qchisq(0.95, df=4) # 9.487729
# On en déduit que les varaibles ne sont pas indépendantes (au seuil 5%)
# car Dchi²=20 est supérieur au quantile 0.95 du Chi-2 qui veut 9.49
# mais que leur dépendance n'est pas linéaire.
### ********************************************* ##
### ********************************************* ##
# 5.3
## (i) La variable explicative est: notes secondaire, la variable
# ecpliquée est : note universitaire
## (ii) Socker les variable
data=read.csv("GPA.csv",header =TRUE,sep=";",dec=",")
x=data$high_GPA
y=data$univ_GPA
## (iii) Tracer le nuage de points et commenter
plot(x,y)
# Le nuage de points est relativement rectiligne, la régression
# linéaire a du sens, elle donnera une tendance moyennement précise
# de y en focntion de x
## (iv) compléter la fonction 
correlation = function(u,v){
  cov=cov(x,y)
  denom = sqrt(var(u) * var(v))
  corr = cov / denom
    return(corr)
}
## (v) Vérifier le résultat
cor(x,y)
correlation(x,y)
## (vi) Calculer les coeffficients de la droite de régression y= ax + b
a <- cov(x,y)/var(x)
b <- mean(y) - a*mean(x)
## (vii) tracer la droite de régression
abline(b,a, col="red")
## (viii) Calculer les valeurs ajustées et les erreurs
yajuste <- a*x + b
erreurs <- y - yajuste
## (ix) le modele lm
model = lm(y~x)
b=model$coefficients[1]
a=model$coefficients[2]
yajustes=model$fitted.values
erreurs=model$residuals
## (x) Représenter les résidus en fonction des valeurs ajustées
plot(yajustes, erreurs)
## (xi) Voit-on une structure particulière des résidus
# Il ne semble pas y avoir de structure particulière des erreurs, car dans une
# régression linéaire on a l'hypothèse: les erreurs sont distribuées selon une
# loi normale N(0, sigma) et sont indépendantes.
## (xii)
notUniv =  a*2.5 + b



