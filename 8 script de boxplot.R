##############################
#Brincando com os boxplots   #
#Marcos Vital                #
#R para Bio da Conservação   #
##############################

#Carregando os dados:

setwd("C:/R_Enbio")
dir()
dados<-read.table("insetos.txt", h=T)
summary(dados)

#############################

#Apenas para referência:
tapply(dados$Comprimento, dados$Especie, quantile)

#Boxplot básico:
boxplot(dados$Comprimento ~ dados$Especie)

#Boxplot bonitinho:
boxplot(dados$Comprimento ~ dados$Especie, xlab="Espécie de inseto", ylab="Comprimento do inseto (cm)", las=1, range=0)

#xlab e ylab determina os nomes dos eixos
#las determina a orientação dos números (pode ser de 0 a 3)
#range determina a extensão dos tracinhos (=0 vai de mínimo a máximo)


##
#Boxplot para exploração:
medias<-tapply(dados$Comprimento, dados$Especie, mean)

boxplot(dados$Comprimento ~ dados$Especie, xlab="Espécie de inseto", ylab="Comprimento do inseto (cm)", las=1, range=0)
points(medias, pch=16, col="red", cex=2)
##

#a função points adiciona pontos em um gráfico aberto
#pch determina o tipo de símbolo
#cex determina o tamanho relativo do símbolo
#col determina cores

