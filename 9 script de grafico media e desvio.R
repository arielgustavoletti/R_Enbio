##############################
#Gráficos de médias e desvios#
#Prof. Ariel Gustavo Letti   #
#Minicurso R - IV ENBIO      #
##############################

#Carregando os dados:

setwd("C:/R_Enbio")
dir()
dados<-read.table("insetos.txt", h=T)
summary(dados)

#############################

#Preparando o terreno:
medias<-tapply(dados$Comprimento, dados$Especie, mean)
desvios<-tapply(dados$Comprimento, dados$Especie, sd)

#Criando o gráfico em etapas:
plot(1:3, medias, pch=16, ylim=range(c(medias-desvios, medias+desvios)))
arrows(1:3, medias-desvios, 1:3, medias+desvios, angle=90, code=3)

#Fazendo tudo isso com uma função pronta:
source("funcao_plot_media.R")   #Não se esqueça de ter o arquivo na pasta

#Usando a função na memória do R:
plotmédias(dados$Especie, dados$Comprimento, 
           "Espécie de inseto", "Comprimento do inseto")

