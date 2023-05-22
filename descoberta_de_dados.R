install.packages("tidyverse")
library(tidyverse)

install.packages("funModeling")
library(funModeling)


glimpse(licenciamento_sanitario) #olhar os dados de maneira geral
status(licenciamento_sanitario) #situação dos dados
freq(licenciamento_sanitario) #frequência dos fatores
plot_num(licenciamento_sanitario) #variáveis numéricas (apesar de que neste conjunto de dados, as variáveis numéricas têm valor zero)
profiling_num(licenciamento_sanitario) #estatísticas das variáveis numéricas
