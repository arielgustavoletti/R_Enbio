###################################
#Mediana, quartis e percentis     #
#Prof. Ariel Gustavo Letti        #
#Minicurso R - IV ENBIO           #
###################################

#Carregando e conferindo os dados de exemplo:
data(InsectSprays)
summary(InsectSprays)

#Calcular mediana e quartis:
median(InsectSprays$count)
quantile(InsectSprays$count)

##
#Usando quantile para calcular percentis:
quantile(InsectSprays$count, probs=0.1)    #Percentil 10
quantile(InsectSprays$count, probs=0.9)    #Percentil 90

#Calculando para vários percentis:
quantile(InsectSprays$count, probs=c(0, 0.1, 0.25, 0.5, 0.75, 0.9, 1))

#Imagine que você fosse repetir isso um monte de vezes, para muitas variáveis
#Neste caso, pode ser bem útil fazer isso:
cortes<-c(0, 0.1, 0.25, 0.5, 0.75, 0.9, 1)
quantile(InsectSprays$count, probs=cortes)

##

#Calculando para cada inseticida
#Vou calcular a média de novo, para comparar:

tapply(InsectSprays$count, InsectSprays$spray, mean)
tapply(InsectSprays$count, InsectSprays$spray, quantile)
