library(ade4)
library(arules)
library(forcats)

#importação feita manualmente
str(vendasAtacado) #visualização da base de dados

#transformação em fatores das colunas 3 a 8
for (i in 3:8) {
  vendasAtacado[,i] <- as.factor(vendasAtacado[,i]) 
}
str(vendasAtacado)

#filtro por tipo de dado e criação de colunas apenas com os fatores
factorsVendasAtacado <- unlist(lapply(vendasAtacado, is.factor))
vendasAtacadoFactor <- vendasAtacado[ , factorsVendasAtacado]
str(vendasAtacadoFactor)

#one hot encoding
vendasAtacadoDummy <- acm.disjonctif(vendasAtacadoFactor)

#Discretização
inteirosVendasAtacado <- unlist(lapply(vendasAtacado, is.integer))
vendasAtacadoInteiros <- vendasAtacado[, inteirosVendasAtacado]
str(vendasAtacadoInteiros)


vendasAtacadoInteiros$Channel <- discretize(vendasAtacadoInteiros$Channel, method = "interval", breaks = 2, labels = c("barato", "caro"))
View(vendasAtacadoInteiros) #visualização após as alterações feitas na coluna Channel


#forcats = usando tidyverse em fatores
fct_count(vendasAtacadoFactor$Milk) #frequencia
fct_anon(vendasAtacadoFactor$Milk) #anomização dos fatores
fct_lump(vendasAtacadoFactor$Milk, n = 2) #reclassificação dos fatores

