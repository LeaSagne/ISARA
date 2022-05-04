## Date : 10.05.2020
## VP & VT
## Script TDR3



######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer

library(rstudioapi) # Activation des fonctions
source("fonctions_TD.R") # Chargement de fonctions utiles pour ces TD
viewerpane("TDR1_Decouverte.html") # Affichage du TD1
viewerpane("TDR2_Bonnes_Pratiques.html") # Affichage du TD2
viewerpane("TDR3_Import_donnees.html") # Affichage du TD3
viewerpane("TDR4_Packages_Fonctions.html") 

######## EXERCICE  : import de casino.txt
casino <- read.table("casino.txt",header=TRUE,dec=",",sep="\t",row.names=1)
casino
dim(casino)



casino <- read.table("casino.txt",  header=TRUE,  dec=",",  sep="\t",  row.names=1)
casino

######## EXERCICE  : import de casino.csv
casino <- read.csv2("casino.csv")
casino


# Refaites l'import avec les options 
casino <- read.csv2("casino.csv",  header=TRUE,  dec=",",  sep=";",  row.names=1)
casino



######## EXERCICE  : Loblolly
data("Loblolly")






######## EXERCICE  : Covid19
covid <- read.csv2("https://www.data.gouv.fr/fr/datasets/r/f4935ed4-7a88-44e4-8f8a-33910a151d42" , 
                 header=TRUE, dec=".", sep=";", 
                 skip=7, encoding = "UTF-8")
# Attention nous ne lisons pas les 3 premi?re lignes gr?ce ? skip=3
# Il s'agissait de 3 lignes de pr?sentation des donn?es
# Nous sp?cifions aussi l'encodage en UTF-8 (gestion des accents)
dim(covid)
covid[1:4, 1:5]



