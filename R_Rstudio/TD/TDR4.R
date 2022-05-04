## Date : 10.05.2020
## VP & VT
## Script TDR4


######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer



######## EXERCICE  : installation et utilisation de wordcloud 
#install.packages("wordcloud") # ligne à désactiver après la première utilisation réussie 
library(wordcloud) 
letters # donne les 26 lettres de l'alphabet
taille <- seq(3, 10, len = 26) # 26 tailles croissantes entre 1 et 10
wordcloud(letters, taille, scale=c(7,1), col="darkgreen")



######## EXERCICE  : première fonction
x<-1:10

varc <- function(x) {       # entête de la fonction
  n <- length(x)            # l'effectif
  sce <- sum((x-mean(x))^2) # les SCE
  sce/n                     # la variance de l'echantillon
}

varc(x)
var(x)



######## EXERCICE  : deuxième fonction
var2 <- function(x, type) { 
  if(type=="estim") {return(var(x))} # Variance estimée
  if(type=="calc") {return(varc(x))} # Variance calculée
  else if (type=="both") {return(cbind(var(x), varc(x)))} 
  # les deux cote à cote
}

# Utilisation
var2(x, type="estim")
var2(x, type="calc")
var2(x, type="both")



######## EXERCICE  : l'usage de source()
source("fonctions_TD.R")
varc(2:9)
var2(2:9, type="estim")
var2(2:9, type="both")



######## EXERCICE  : la fonction Circ()


