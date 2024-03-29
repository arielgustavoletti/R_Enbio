##############################
#Brincando com os histogramas#
#Prof. Ariel Gustavo Letti   #
#Minicurso R - IV ENBIO      #
##############################

#Carregando os dados:

setwd("C:/R_Enbio")
dir()
dados<-read.table("insetos.txt", h=T)
summary(dados)

#############################

#Um histograma básico (usando a espécie 3):
hist(dados$Comprimento[dados$Especie=="sp_3"])

#O histograma bonitinho:
hist(dados$Comprimento[dados$Especie=="sp_3"], col="gray", main=" ", las=1, xlab="Classes de comprimento", ylab="Frequência")
box()

#Brincando com o histograma, exploração:
media.sp3<-mean(dados$Comprimento[dados$Especie=="sp_3"])
hist(dados$Comprimento[dados$Especie=="sp_3"], col="gray", main=" ", las=1, xlab="Classes de comprimento", ylab="Frequência", ylim=c(0, 12))
abline(v=media.sp3, col="red", lty=2)
text(x=media.sp3, y=11, labels="57,2", pos=4, col="red")
box()

#main determina o título
#ylim e xlim determinam o início e o fim dos eixos
#a função abline, adiciona uma linha
  #lty determina o tipo de linha
#a função text adiciona texto no gráfico
  #pos coloca o texto à direita da coordenada escolhida
  #labels determina o texto que eu quero
#a função box adiciona uma caixa em torno do gráfico
