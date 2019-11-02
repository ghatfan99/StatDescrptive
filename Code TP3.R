data=read.csv("diplome_sexe.csv",header =TRUE,sep=";")

dim(data)
head(data)
diplome=data$Diplome
sexe=data$Sexe
levels(diplome)
table(diplome)
length(which(diplome=="Licence"))

diplome_sexe=table(diplome,sexe)
chisq.test(diplome_sexe)
qchisq(0.95,2)  # valeur critique, on peut l'obtenir dans le tableau fourni en TD


cramer <- function(x, y) {
  res <- chisq.test(x, y)
  chi2 <- as.numeric(res$statistic)
  n <- length(x)
  p <- length(levels(x))
  q <- length(levels(y))
  m <- min(p-1,q-1)
  V <- sqrt(chi2/(n * m))
  return(V)
}

cramer(sexe,diplome)


film <- as.factor(sample(c("A","C","S"),75,replace=T))
niveau<- as.factor(sample(c("C","L","U"),75,replace=T))
tab.obs=table(film,niveau)
chisq.test(tab.obs)
qchisq(0.95,1)

tab.theo=data.frame()
for(i in 1:nrow(tab.obs)){
  for(j in 1:ncol(tab.obs)){
    tab.theo[i,j]=sum(tab.obs[i,])*sum(tab.obs[,j])/75
  }
}
chi2=sum(((tab.obs-tab.theo)^2)/tab.theo)

cramer(sexe,examen)