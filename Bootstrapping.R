#bootstrapping (repetição)
set.seed(412)

bootsDisNormal20 <- replicate(20, sample(distNormal1, 20, replace = TRUE)) #replicação da amostra em 20x
bootsDisNormal20

#cálculo de estatística com bootstrapping
medianaBootsNormal20 <- replicate(20, median(sample(distNormal1, 20, replace = TRUE))) #cálculo da mediana de 20 amostras de 20 casos
medianaBootsNormal20

medianaBootsNormal77 <- replicate(77, median(sample(distNormal1, 20, replace = TRUE))) #cálculo da mediana de 77 amostras de 20 casos
medianaBootsNormal77

medianBootsNormal99 <- replicate(99, median(sample(distNormal1, 20, replace = TRUE))) #cálculo da mediana de 99 amostras de 20 casos
medianBootsNormal99

#comparação entre as medianas
median(medianaBootsNormal20) #mediana do bootstrapping 20
median(medianaBootsNormal77) #mediana do bootstrapping
median(medianBootsNormal99) #mediana do bootstrapping
median(distNormal1) #mediana dos dados originais
