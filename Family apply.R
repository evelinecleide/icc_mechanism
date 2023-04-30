#funções de repetição

#média das variáveis do data.frame mtcars 
apply(iris[,-5], 2, mean)
lapply(iris[,-5], mean)
sapply(iris[,-5], mean)


#histogramas

par(mfrow = c(2, 4)) # prepara a área de plotagem

sapply(iris[2,2], hist)
mapply(hist, iris[ , 1:2], MoreArgs=list(main='Histograma Base Iris', xlab = 'Valores', ylab = 'Frequência'))

for (i in 1:2) { #vai da coluna 1 até a 2
  x <- iris[ , i]
  hist(x,
       main = names(iris)[i], #nome do gráfico
       xlab = "Valores da Variável", #nomenclatura do eixo x
       ylab = 'Frequência', #nomenclatura do eixo y
       xlim = c(min(iris[, i]), max(iris[, i]))) #limite do eixo x
}

  