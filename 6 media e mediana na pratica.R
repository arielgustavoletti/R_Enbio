###################################
#Média e mediana na prática       #
#Prof. Ariel Gustavo Letti        #
#Minicurso R - IV ENBIO           #
###################################

#Carregando os dados:

setwd("C:/R_Enbio")
dir()
dados<-read.table("inseto.txt", h=T)
summary(dados)

#############################

#Histograma do comprimento dos bichinhos
hist(dados$Comprimento, col="gray")

#Agora, um histograma para cada espécie:
hist(dados$Comprimento[dados$Especie=="sp_1"], col="gray")
hist(dados$Comprimento[dados$Especie=="sp_2"], col="gray")
hist(dados$Comprimento[dados$Especie=="sp_3"], col="gray")

#Boxplot:
boxplot(dados$Comprimento ~ dados$Especie)

#Aqui usamos o formato y~x
#Que significa y em resposta à x
#Ou, y em função de x
#Ou ainda, y dependendo de x

#Vamos olhar os números:
tapply(dados$Comprimento, dados$Especie, mean)
tapply(dados$Comprimento, dados$Especie, sd)

tapply(dados$Comprimento, dados$Especie, quantile)
