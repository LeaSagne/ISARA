## Date : 10.05.2020
## VP & VT
## Script TDR1


###################################################
###  Intro- 1e session  
###################################################
x <- 6*7    # On peut stocker un r?sultat dans un objet
z <- x+2    # manipuler cet objet
x           # puis afficher les r?sultats
z



######## EXERCICE : Script ? tester et corriger
1+1 # addition
3^2 # exposant
sqrt(16) # racine carr? 
# sqrt(-2)
log(4)
exp(2)
cos(3.141593)

######## EXERCICE : utilisez ls() et rm() pour supprimer z puis le recreer
ls()      # l'ensemble des objets cr??s
rm(z)     # suppression de z
ls()      # v?rification (regarder aussi la fenetre Environment)

z <- x+2  # en cas d'erreur on peut directement ecraser un objet pour le remplacer par un nouveau
z
y <- log(z)
rm(z)
ls()
z <-- x+2



######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer

install.packages("rstudioapi") # t?l?charge des fonctions ? partir du web. 
# Acceptez s'il propose de redemarrer ou d'installer d'autres fonctions. 
# A faire une seule fois ici. 
library(rstudioapi) # Activation des fonctions
source("fonctions_TD.R") # Chargement de fonctions utiles pour ces TD
viewerpane("TDR1_Decouverte.html") # Affichage du TD1
viewerpane("TDR2_Bonnes_Pratiques.html") # Affichage du TD2
viewerpane("TDR3_Import_donnees.html") # Affichage du TD3
viewerpane("TDR4_Packages_Fonctions.html") 
viewerpane("TDR5_Formats_Objets.html") 
viewerpane("TDR6_Manipulation_donnees.html") 
viewerpane("TDR7_Graphique_Principes.html") 
viewerpane("TDR8_Graphique_et_Variables.html") 

