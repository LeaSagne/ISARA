## Date : 10.05.2020
## VP & VT
## Script TDR2



######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer

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

######## EXERCICE : ligne de code permettant de g?rer le repertoire courant
setwd() # trouver le bon chemin sur votre ordinateur
getwd() # pour v?rifier quel est le repertoire actuel

######## EXERCICE : la racine de 20...
rac20<-4.48^2
rac20+25

######## EXERCICE : mettre dans le bon ordre
a+1 
a <- 28 
# OU
a <- 28 
a+1 

######## L'aide : 
?lm
apropos("lm") 
help.search("lm") 
??lm 
help.start()

t3var <- read.table("t3var.txt", header=TRUE)
t3var$sexe<-factor(t3var$sexe)

