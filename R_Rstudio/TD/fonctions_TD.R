varc <- function(x) {       # entête de la fonction
  n <- length(x)            # l'effectif
  sce <- sum((x-mean(x))^2) # les SCE
  sce/n                     # la variance de l'echantillon
}

var2 <- function(x, type) { 
  if(type=="estim")       {return(var(x))}            # Variance estimée
  if(type=="calc")        {return(varc(x))}           # Variance calculée
  else if (type=="both")  {return(cbind(var(x), varc(x)))} # les deux cote à cote
}

viewerpane<-function(file){
  tempDir <- tempfile() ;  dir.create(tempDir) 
  workDir <- getwd()
  htmlFileWD <- file.path(workDir, file)
  htmlFileTE <- file.path(tempDir, file)
  file.copy(htmlFileWD, tempDir, overwrite = TRUE)
  viewer(htmlFileTE)
}

plotME <- function(y, fac, col="black", cex=1, pch=16, lwd=1, lty=1, ylab="y") {
  meay<-tapply(y, fac, mean)          # la moyenne par groupe
  sdy<-tapply(y, fac, sd)             # l'écart-type par groupe
  x<-1:nlevels(fac)                 # la position des moyenne sur x
  stripchart(y~fac, cex=0, vertical=T, las=2, ylab=ylab)    # un graphique vide
  points(x, meay, pch=pch, col=col, cex=cex)      # on place les points
  arrows(x, meay-sdy, x, meay+sdy, col=col, lwd=lwd, lty=lty, code=3, angle=90, le=0.05)
  # la dernière ligne est un détournement de arrows() pour faire des barres d'erreur
}