library(dplyr)

#carregamento da base de dados original (atendimento de serviço da Emlurb)
atendimentoEmlurb <- read.csv2("http://dados.recife.pe.gov.br/dataset/99eea78a-1bd9-4b87-95b8-7e7bae8f64d4/resource/9afa68cf-7fd9-4735-b157-e23da873fef7/download/156_diario.csv", sep = ";", encoding = "UTF-8")

#carregamento da base de dados atualizada
atendimentoEmlurbNew <- read.csv2("http://dados.recife.pe.gov.br/dataset/99eea78a-1bd9-4b87-95b8-7e7bae8f64d4/resource/9afa68cf-7fd9-4735-b157-e23da873fef7/download/156_diario.csv", sep = ";", encoding = "UTF-8")

#comparação usando chave primária
atendimentoEmlurbIncremento <- (!atendimentoEmlurbNew$GRUPOSERVICO_CODIGO %in% atendimentoEmlurb$GRUPOSERVICO_CODIGO)


#comparação linha a linha
setdiff(atendimentoEmlurbNew, atendimentoEmlurb)
