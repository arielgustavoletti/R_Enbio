###################################
#Lendo dados no R: txt            #
#Prof. Ariel Gustavo Letti        #
#Minicurso R - IV ENBIO           #
###################################

#Etapa 1: salve o arquivo no formato que você deseja usar

#Etapa 2: determinar a pasta de trabalho

setwd("C:/R_Enbio")

getwd()   #Aqui eu posso usar esta função para ver se estou na pasta

#Etapa 3: conferir se os dados estão na pasta:

dir()

#Etapa 4: lendo o arquivo e salvando em um objeto

dados <- read.table("insetos.txt", header=T)

#Etapa 5: conferindo se o objeto foi criado corretamente

summary(dados)

