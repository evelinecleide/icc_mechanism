library(dplyr)
library(tidyverse)


#carregamento das bases
arvoresTombadas <- read.csv2('http://dados.recife.pe.gov.br/dataset/54b30ac0-197b-4ad9-824c-854a220ad46c/resource/0c1935f4-1a7f-4c76-b3ba-b344951d6820/download/arvores-tombadas.csv')
bairrosRecife <- read.csv2('http://dados.recife.pe.gov.br/dataset/c1f100f0-f56f-4dd4-9dcc-1aa4da28798a/resource/698d8fe1-d30a-485f-8d5d-307d46163d0c/download/bairro.csv')

#para vermos em que região política administrativa/bairro fica cada árvore tombada
arvoresTombadas <- left_join(arvoresTombadas, bairrosRecife, by = c('rpa' = 'rpa'))

