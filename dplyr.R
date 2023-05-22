library(dplyr)

#Sumário (da base de licenciamento sanitário da prefeitura do Recife, pela coluna "situação do processo")

count(licenciamento_sanitario, situacao_processo)

#Sumários com agrupamento

licenciamento_sanitario %>% group_by(situacao_processo) %>% summarise(avg = mean(valor_taxa))

#Transformação de dados

licenciamento_sanitario %>% filter(situacao_processo != "CANCELADO") %>% summarise(avg = mean(valor_taxa))
licenciamento_sanitario %>% filter(situacao_processo != "CANCELADO") %>% group_by(situacao_processo, valor_pago) %>% summarise(avg = mean(valor_taxa))

#Transformação de variáveis

licenciamento_sanitario %>% select(situacao_processo, valor_taxa, valor_pago) %>% arrange(valor_taxa)

#Criação de colunas

licenciamento_sanitario %>% mutate(CustoProcesso = valor_taxa/valor_pago)

                                                                                   