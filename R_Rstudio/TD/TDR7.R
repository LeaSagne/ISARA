## Date : 10.05.2020
## VP & VT
## Script TDR7


######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer


######## EXERCICE  : Importer t3var.txt
t3var <- read.table("t3var.txt", header=TRUE, sep="\t")
head(t3var)

t3var$sexe <- factor(t3var$sexe)

poi <- (t3var$poi)
tai <- (t3var$tai)
sexe <- factor(t3var$sexe)



######## EXERCICE  : premier graphique (testez, modifiez, commentez)

## version de base
plot(poi~tai)

## customisation I
colo <- c("goldenrod3", "darkblue")[as.numeric(t3var$sexe)] 
colo
sexe[1:10]

pttype <- c(17,16)[as.numeric(t3var$sexe)]             
# des formes de points suivant le sexe
pttype[1:10]

titre <- paste("Poids et taille de", nrow(t3var), "individus")  
titre

plot(poi~tai,                             
     main = titre,                        
     xlab = "Taille (cm)", ylab = "Poids (kg)",     
     col = colo, pch = pttype, cex = 1, 
     xlim=c(145,202), ylim=c(45,88))     

## customisation II (ajout d'éléments)
legend(145, 88, c("Femmes", "Hommes"), pch = c(17, 20), 
       col = c("goldenrod3", "darkblue"), pt.cex=1.5, cex=0.8)

mt <- mean(tai)
mp <- mean(poi)
abline(v=mt, lty=2, lwd=2, col="lightgrey")
abline(h=mp, lty=2, lwd=2, col="lightgrey")

arrows(185, 53, 178, 53, angle = 20, le=0.15, col="goldenrod3", lwd=2)
rect(185 ,51, 200, 54, col="goldenrod3", border=NA)
text(185 ,53, "Une femme grande", pos=4, cex=0.6, col="white", font=2)
text(185, 52, "et mince", pos=4, cex=0.6, col="white", font=2)

######## EXERCICE  : graphiques multiples (testez, modifiez, commentez)

par(mfrow=c(1, 3),mar=c(4, 4, 2, 1),
    mgp=c(2.5, 0.8, 0.5), las=1,  
    cex.axis=0.6,              
    cex.lab=0.8, font.lab=3,    
    font.main=2)        

plot(tai, poi,main="Plot 1",axes=F)
axis(side=1,at=seq(150,200,by=5),labels=seq(150,200,by=5),cex.lab=0.7)



plot(tai, main="Plot 2")
plot(poi, main="Plot 3")
plot(poi, tai,main="Plot 4")

######## EXERCICE  : recréez le graphique demandé








