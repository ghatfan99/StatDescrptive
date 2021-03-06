data=read.csv("GPA.csv",header =TRUE,sep=";",dec=",")
x=data$high_GPA
y=data$univ_GPA
plot(x,y)

correlation= function(u,v){
  cov= cov(u,v)
  denom= sqrt(var(u)*var(v))
  corr= cov/denom
  return(corr)
}
# ou aussi
correlation= function(u,v){
  cov= mean(u*v)-mean(u)*mean(v)
  varx=mean(u^2)-mean(u)^2
  vary=mean(v^2)-mean(v)^2
  denom= sqrt(varu*varv)
  corr= cov/denom
  return(corr)
}

correlation(x,y)
cor(x,y)

bchap=cov(x,y)/var(x)   # pente
achap=mean(y)-bchap*mean(x)   # ordonn�e � l'origine
abline(achap,bchap,col="red")

ychap=achap+bchap*x   # valeurs ajust�s
erreurs=y-ychap     # erreurs
  
model<-lm(y~x)
a<-model$coefficients[1]
b<-model$coefficients[2]
yajustes<-model$fitted.values
erreurs<-model$residuals

plot(ychap,erreurs)  # pas de structure particuli�re des erreurs 
# car dan une regression lin�aire on a une hypoth�se : les erreurs sont distribues
# selon une loi normale N(0,sigma2) et sont ind�pendantes

achap+2.5*bchap   # pr�diction 
