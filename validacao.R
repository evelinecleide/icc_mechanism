install.packages("validate")
library(validate)
library(tidyverse)
library(data.table)
library(dplyr)


casosGravesCovid <- fread("http://dados.recife.pe.gov.br/dataset/2b5ee58d-9535-4d80-ab32-f63fd475346e/resource/93f4e8c2-430f-4142-86b3-96dab4905b4e/download/casosgravescovid.csv") #carregamento dos dados dos casos graves covid 19 disponíveis no site da prefeitura do Recife

casosGravesCovidN <- casosGravesCovid %>% select(bairro, evolucao, sintomas) #seleção das variáveis de interesse

regrascasosGravesCovidN <- validator(evolucao >= 0, sintomas >= 0) #criação das regras para validação

validacaoCasosGravesCovid <- confront(casosGravesCovidN, regrascasosGravesCovidN) #comparação da nossa base de dados com as regras

summary(validacaoCasosGravesCovid)

plot(validacaoCasosGravesCovid)
