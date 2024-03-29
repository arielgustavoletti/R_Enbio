###################################
#M�dia e mediana na pr�tica       #
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

#Agora, um histograma para cada esp�cie:
hist(dados$Comprimento[dados$Especie=="sp_1"], col="gray")
hist(dados$Comprimento[dados$Especie=="sp_2"], col="gray")
hist(dados$Comprimento[dados$Especie=="sp_3"], col="gray")

#Boxplot:
boxplot(dados$Comprimento ~ dados$Especie)

#Aqui usamos o formato y~x
#Que significa y em resposta � x
#Ou, y em fun��o de x
#Ou ainda, y dependendo de x

#Vamos olhar os n�meros:
tapply(dados$Comprimento, dados$Especie, mean)
tapply(dados$Comprimento, dados$Especie, sd)

tapply(dados$Comprimento, dados$Especie, quantile)
