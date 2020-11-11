# TP3 statistiques descriptives de Julien
# Quand la distance de Khi2 > q0.95 (table de khi2), on conclut
# que les variables sont dépandantes et selon le problème
# posé on continue (la situation maritale influence l'accepation
# ou le refus d'un dossier pour un crédit)
###### Les coefficeints C et phi ######
# C = sqrt(Dkhi2 / Dkhi2 + n) il es entre 0 et 1
# phi = sqrt(Dkhi2 / n)
# plus il sont proches de 0 plus il y a un indépendance 
# entre les deux varaibles
#######################################
## Le coefficient V de Cram ́er n ́ecessite l’utilisation de la statistique du χ
# V = sqrt(Dkhi2 / n × min{l − 1; c − 1})
# o`u n est l’effectif total de la population, c est le nombre de colonnes (nombre de modalit ́es de Y )
# et l le nombre de lignes (modalits de X).
#### interprétation ####
# Valeur du V de Cram ́er Intensite de la relation entre les variables
# inférieur à 0,10 relation nulle ou très faible
# entre       0,10 et 0,20 relation faible
# entre       0,20 et 0,30 relation moyenne
# au dessus de 0,30 relation forte

##################### TP ################
### 3.1
# i, deux f çons de faire
poidstaille=cbind(c(830,862),c(8615,11183),c(30784,2756),c(4839,2348)) # columns concate
poidstaille=rbind(c(830,8615,30784,4839),c(862,11183,27566,2348)) # rows bind
# ii, donner des noms aux lignes
rownames(poidstaille)=c("Garçons","filles")
# iii, on ajoute les modalités pour les colonnes
colnames(poidstaille)=c("Faible","Moyen","Elevé","Tr.élv")
### 3.2
# i, somme totale des effectifs
sum(poidstaille)
# ii, le tableau des fréquences
frequences = poidstaille/sum(poidstaille)
# la table des fréquences, on peut l'obtenir avec la commande
prop.table(poidstaille)
### 3.3
# i, La distribution de Y pour les garçons
poidstaille[1,]
poidstaille[1,]/sum(poidstaille[1,]) #fréquences par rapport à l'effectif de garçons
# ii, La distribution de Y pour les filles
poidstaille[2,]
poidstaille[2,]/sum(poidstaille[2,]) #fréquences par rapport à l'effectif de filles
# iii, tracer diagramme en batons
barplot(poidstaille,main = 'Garçon, Filles', xlab = "nombre", 
        legend=row.names(poidstaille), beside = TRUE, col=c("darkblue", "red"))

### 3.4
# i, les marges
frequences = addmargins(frequences)
# ii, La serie de frequences garcons et de filles
frequences[,5]
# iii, distribution marginale de Y  
frequences[3,]

### 3.5 V de Cramer
# statistique de khi2
chisq.test(poidstaille)
# fonction de Cramer
cramer = function(table) {
  test = chisq.test(table)
  chi2 = as.numeric(test$statistic)
  n = sum(table)
  c = length(table[1, ])
  r = length(table[, 1])
  m = min(c, r)
  V = sqrt(chi2 / n * (m - 1))
  return(V)
}
# application sur notre exemple
cramer(poidstaille)





