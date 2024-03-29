######################################
#Explorando dados no R: o come�o     #
#Prof. Ariel Gustavo Letti           #
#Minicurso R - IV ENBIO              #
######################################

#Estabelecendo o diret�rio de trabalho:
setwd("C:/R_Enbio")
#Conferindo os arquivos no diret�rio:
dir()
#Lendo o arquivo de dados:
dados<-read.table("insetos.txt", header=T)

#Conferindo os dados:
summary(dados)

##########################################

#Olhando as seis primeiras linhas:
head(dados)

#Calculando o comprimento m�dio dos insetos:
mean(dados$Comprimento)

#Calculando a mesma m�dia, mas por esp�cie:
mean(dados$Comprimento[dados$Especie=="sp_1"])
mean(dados$Comprimento[dados$Especie=="sp_2"])
mean(dados$Comprimento[dados$Especie=="sp_3"])

#Qual � o n�mero de manchas dos insetos maiores que 80mm?
dados$Manchas[dados$Comprimento>80]

#Quais as esp�cies destes mesmos insetos grandes?
dados$Especie[dados$Comprimento>80]

#Quais as esp�cies de insetos menores ou iguais que 50mm e com mais de 3 manchas?
dados$Especie[dados$Comprimento<=50 & dados$Manchas>3]

##
#Voltando na m�dia de Comprimento por esp�cie:
tapply(dados$Comprimento, dados$Especie, mean)

#Como �????
#tapply(var. quantitativa, var. categ�rica, coisa a ser calculada)
#no exemplo: m�dia do comprimento por esp�cie

####

#Nosso primeiro gr�fico no R:

plot(dados$Manchas~dados$Comprimento)

