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

