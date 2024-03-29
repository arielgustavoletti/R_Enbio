plotm�dias<-function(var.x, var.y, nome.x, nome.y){
  m�dias<-tapply(var.y, var.x, mean)
  desvios<-tapply(var.y, var.x, sd)
  x<-1:nlevels(var.x)
  
  plot(x, m�dias, ylim=range(c(m�dias-desvios, m�dias+desvios)), pch=16,
     axes=F, xlab=nome.x, ylab=nome.y)

axis(2, las=1)
axis(1, x, levels(var.x))
box()

arrows(x, m�dias-desvios, x, m�dias+desvios, angle=90, code=3, length=0.05)
  
}

#plotm�dias(iris$Species, iris$Sepal.Length, "Especies" , "compr.sepala")
