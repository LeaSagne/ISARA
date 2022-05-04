casino <- read.table("casino.txt",header=TRUE,dec=",",sep="\t",row.names=1)
casino
dim(casino)
casino[casino$Couleur_voiture=="bleu",]
casino[casino$Couleur_voiture!="bleu",]
#install.packages("dplyr")
library(dplyr)
casino
filter(casino, Couleur_voiture=="bleu")
select(casino, Score, Gain)
#selectionner les lignes bleu 
#et ne garder que les colonnes Score et Gain 
# Sans dyplr 
casino[casino$Couleur_voiture=="bleu", 1:2]
names(casino)="Score"|names(casino)=="Gain"
casino[casino$Couleur_voiture=="bleu" , names(casino)=="Score"|names(casino)=="Gain"]

#Avec dplyr
filter(casino, Couleur_voiture=="bleu")
select(casino, Score, Gain)

casino_bleu <- filter(casino, Couleur_voiture=="bleu")
select(casino_bleu, Score, Gain)

casino %>% 
  filter(Couleur_voiture=="bleu") %>% 
  select(Score, Gain) %>% 
  mutate(rapport=Gain/Score)