pacman::p_load(dplyr)

#carregando as bases de dados do site da prefeitura (anos 2018 e 2019)
sinistrosRecife2018Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/2485590a-3b35-4ad0-b955-8dfc36b61021/download/acidentes_2018.csv' , sep = ';' , encoding = 'UTF-8')

sinistrosRecife2019Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/3531bafe-d47d-415e-b154-a881081ac76c/download/acidentes-2019.csv', sep = ';', encoding = 'UTF-8')

#juntando as bases de dados
colunas_iguais <- names(sinistrosRecife2018Raw[
  intersect(
    names(sinistrosRecife2018Raw), names(sinistrosRecife2019Raw))])

sinistrosRecife2018Raw <- sinistrosRecife2018Raw %>% select(all_of(colunas_iguais))

sinistrosRecifeRaw <- rbind(sinistrosRecife2018Raw, sinistrosRecife2019Raw)

#visualização da estrutura dos dados
str(sinistrosRecifeRaw)

# modifica natureza do sinistro de texto para fator
sinistrosRecifeRaw$natureza_acidente <- as.factor(sinistrosRecifeRaw$natureza_acidente)

# modifica a situação do sinistro de texto para fator
sinistrosRecifeRaw$situacao <- as.factor(sinistrosRecifeRaw$situacao)


