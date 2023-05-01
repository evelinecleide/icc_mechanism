#funções de repetição

#média das variáveis do data.frame mtcarss 
apply(mtcars[], 2, mean)
lapply(mtcars[], mean)
sapply(mtcars[], mean)



#histogramas

par(mfrow = c(1, 2)) #prepara a área de plots

sapply(mtcars[2,2], hist)
mapply(hist, mtcars[ , 1:2], MoreArgs=list(main='Histograma Base Mtcars', xlab = 'Valores', ylab = 'Frequ?ncia'))

for (i in 1:2) { #vai da coluna 1 até a 2
  x <- mtcars[ , i]
  hist(x,
       main = names(mtcars)[i], #nome do gráfico
       xlab = "Valores da Variavel", #nomenclatura do eixo x
       ylab = 'Frequencia', #nomenclatura do eixo y
       xlim = c(min(mtcars[, i]), max(mtcars[, i]))) #limite do eixo x
}
