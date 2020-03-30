#FreeThrow attemps per game
FTPlot <- function(rows=1:10){
  Data <- FreeThrowsFTA/Games
  
  matplot(t(Data[rows,,drop=F]), type="b", pch=15:18, col=c(1:4, 6))
  legend("bottomright", inset=0.01, legend=Players[rows], col=c(1:4, 6), pch=15:18, horiz=F)
}

FTPlot(1:3)

#Accuracy of free throws
accuracy <- function(rows=1:10){
  Data <- FreeThrows/FreeThrowsFTA
  
  matplot(t(Data[rows,,drop=F]), type="b", pch=15:18, col=c(1:4, 6))
  legend("bottomright", inset=0.01, legend=Players[rows], col=c(1:4, 6), pch=15:18, horiz=F)
  
}

accuracy()

#Player playing style
style <- function(rows=1:10){
  Data <- (Points - FreeThrows)/FieldGoals
  
  matplot(t(Data[rows,,drop=F]), type="b", pch=15:18, col=c(1:4, 6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4, 6), pch=15:18, horiz=F)
  
}

style()
