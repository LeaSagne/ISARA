## Date : 10.05.2020
## VP & VT
## Script TDR5



######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer



######## Les vecteurs

# Numeriques
vec1 <- c(1, 6, 2, 1887, 15)
vec1
class(vec1)

# caratère
vec2 <- c("a", "28", "a56", "nan mais allo quoi?")
vec2 
class(vec2)

# Facteurs
vec3 <- c("A1", "A1", "A2", "A2", "A2", "A3")
class(vec3) # Pour l'instant c'est du caratère
fac3 <- factor(vec3)
fac3

######## EXERCICE  : testez et commentez 

class(fac3)
levels(fac3)
nlevels(fac3)
table(fac3)
levels(vec3) # note : vec3 n'est pas un facteur

levels(fac3) <- c("pim", "pam", "poum")
fac3 

# Pour changer l'ordre ou ajouter des modalités il faut créer un nouveaux facteur en indiquant les modalités possibles
fac4 <- factor(fac3, levels = c("pam", "poum", "pim", "paf"))
# ici on "écrase" l'ancien format de fac3 avec le nouveau format de fac4
fac4 
levels(fac4) 
table(fac4)
table(fac3)

as.numeric(fac3)
as.character(vec1) 
as.factor(vec1)

vec1b <- c(vec1, "a")
vec1b
class(vec1b)



######## EXERCICE  : importez DesIris.txt, testez les scripts et commentez

# Import 
iris1 <- read.table("DesIris.txt",sep=" ",dec=".",header=TRUE)
# Tests
iris1         # Affichage de toutes les données
class(iris1)  # Le format de l'objet crée
names(iris1)  # A vous de commenter 
dim(iris1)    # ?dim
head(iris1)   # ...
summary(iris1)
str(iris1)


######## Pour info  :  les listes

# Listes simples
list1 <- list(vec1, vec2, fac3)
# Affichez list1 dans la console
list1[[3]] # le contenu du troisième élément de la liste

# Listes complexe, hiérarchisées, à tiroir, super listes ...
list2 <- list(list1, iris1, c("Hello", "World"))
list2[[1]][[3]] # objet 1 et sous-objet 3
list2[[3]] # objet 3 (ne possède pas de sous-objet)





class(covid)  # Le format de l'objet crée
names(covid)  # A vous de commenter 
dim(covid)    # ?dim
head(covid,2)   # ...
tail(covid,3)
summary(covid)
str(covid)
