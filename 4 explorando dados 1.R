######################################
#Explorando dados no R: o começo     #
#Prof. Ariel Gustavo Letti           #
#Minicurso R - IV ENBIO              #
######################################

#Estabelecendo o diretório de trabalho:
setwd("C:/R_Enbio")
#Conferindo os arquivos no diretório:
dir()
#Lendo o arquivo de dados:
dados<-read.table("insetos.txt", header=T)

#Conferindo os dados:
summary(dados)

##########################################

#Olhando as seis primeiras linhas:
head(dados)

#Calculando o comprimento médio dos insetos:
mean(dados$Comprimento)

#Calculando a mesma média, mas por espécie:
mean(dados$Comprimento[dados$Especie=="sp_1"])
mean(dados$Comprimento[dados$Especie=="sp_2"])
mean(dados$Comprimento[dados$Especie=="sp_3"])

#Qual é o número de manchas dos insetos maiores que 80mm?
dados$Manchas[dados$Comprimento>80]

#Quais as espécies destes mesmos insetos grandes?
dados$Especie[dados$Comprimento>80]

#Quais as espécies de insetos menores ou iguais que 50mm e com mais de 3 manchas?
dados$Especie[dados$Comprimento<=50 & dados$Manchas>3]

##
#Voltando na média de Comprimento por espécie:
tapply(dados$Comprimento, dados$Especie, mean)

#Como é????
#tapply(var. quantitativa, var. categórica, coisa a ser calculada)
#no exemplo: média do comprimento por espécie

####

#Nosso primeiro gráfico no R:

plot(dados$Manchas~dados$Comprimento)

