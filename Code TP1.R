### TP 1 

# I

#1 variable quantitative discrete

eff=c(125,200,295,100,50)
n=sum(eff)
freq=eff/n
modalités=1:5

plot(modalités,eff,type='h',col='red',xlab="nb de personnes par ménage",
     ylab="Fréquence",main="diagramme en bâtons",lwd=2)

barplot(freq,names.arg = 1:5)  # on peut ajouter les labels et un titre comme dans plot


# II

centres=seq(17,62,by=5)
eff.celib=c(44827, 81345, 21774, 5216, 1768, 833, 521, 383, 265, 176)
freq.celib=eff.celib/sum(eff.celib)
eff.veuf=c(20,175,391,394,425,529,795,932,1041,947)
freq.veuf=eff.veuf/sum(eff.veuf)
eff.div=c(86,2558,6162,4785,2958,2121,1589,1125,563,235)
freq.div=eff.div/sum(eff.div)

plot(centres,freq.celib,xlab="Age",ylab="Fréquence",type="b",
     col="red",main="Polygone des fréquences")
lines(centres,freq.veuf,type="b",col="blue",pch=2)
lines(centres,freq.div,type="b",col="green",pch=3)
legend(x=50,y=0.5,legend=c("célibataire","Veuf","Divorcé"),pch=1:3,
       col=c("red","blue","green"))
# on peut aussi jouer avec lty (line type)

# III

# variable qualitative ordinale

modalités=c("Afrique","Amérique du Nord","Amérique du Nord","Amérique du Sud",
            "Asie","Europe","Océanie")
freq=c(0.111,0.082,0.0554,0.608,0.139,0.005)
pie(freq,labels=modalités,col=1:6,main="diagramme circulaire",
    xlab="Distribution de la population mondiale sur les continents")

# test d'ajustement

eff.obs=c(50 ,42 ,47 ,42 ,44 ,40 ,35)
freq.theo=rep(1/7,7)
chisq.test(x=eff.obs,p=freq.theo)




