library(dplyr)
library(ggplot2)
View(WholeSale)

#Gráfico de Caixas Univariado
WholeSale %>% ggplot(aes(y = Grocery)) + geom_boxplot()

#Gráfico de Caixas Multivariado
WholeSale %>% ggplot(aes(y = Fresh, x = Frozen)) + geom_boxplot()

#Histograma
WholeSale %>% ggplot(aes(x = Grocery)) + geom_histogram()

#Densidade
WholeSale %>% ggplot(aes(x = Grocery)) + geom_density()

#Dispersão
WholeSale %>% ggplot(aes(x = Channel, y = Region)) + geom_point()
