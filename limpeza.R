library(data.table)
library(dplyr)
library(tidyverse)
library(funModeling) 

casosGravesCovid <- fread("http://dados.recife.pe.gov.br/dataset/2b5ee58d-9535-4d80-ab32-f63fd475346e/resource/93f4e8c2-430f-4142-86b3-96dab4905b4e/download/casosgravescovid.csv") #carregamento dos dados dos casos graves covid 19 disponíveis no site da prefeitura do Recife

casosGravesCovidN <- casosGravesCovid %>% select(bairro, evolucao, sintomas) #seleção das variáveis de interesse

status(casosGravesCovidN) # estrutura dos dados (missing etc)
freq(casosGravesCovidN) # frequência das variáveis fator
plot_num(casosGravesCovidN) # exploração das variáveis numéricas
profiling_num(casosGravesCovidN) # estatísticas das variáveis numéricas

casosGravesCovidN %>% filter(evolucao < 0)

casosGravesCovidN <- casosGravesCovidN %>% filter(evolucao>=0)

