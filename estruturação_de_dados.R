library(data.table)
library(dplyr)
library(tidyverse)

casosGravesCovid <- fread("http://dados.recife.pe.gov.br/dataset/2b5ee58d-9535-4d80-ab32-f63fd475346e/resource/93f4e8c2-430f-4142-86b3-96dab4905b4e/download/casosgravescovid.csv") #carregamento dos dados dos casos graves covid 19 disponíveis no site da prefeitura do Recife

casos <- casosGravesCovid %>% group_by(bairro) %>% mutate(row = row_number()) %>% select(bairro, evolucao, row) #criação de matriz agrupando por bairros e selecionando apenas algumas variávies

#filtro para termos os mesmo número de casos nos bairros
result <- casos %>% group_by(bairro) %>% filter(row == max(row))
casos <- casos %>% filter(row<=min(result$row))

#pivota o data frame de long para wide
casosN <- casos %>% pivot_wider(names_from = row, values_from = evolucao) %>% remove_rownames %>% column_to_rownames(var ="bairro")
