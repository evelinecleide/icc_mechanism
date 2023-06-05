install.packages("funModeling")
library(funModeling)
library(data.table)
library(tidyverse)

#Importação da base Atendimentos do Samu 2017
Samu2017 <- fread("http://dados.recife.pe.gov.br/dataset/e643f9e1-d6ee-468d-b408-1e78083bfd49/resource/bdf3244b-7582-4851-be16-6e561420a34b/download/ocorrencias2017.csv")

#Identificação de valores ausentes
status(Samu2017)

#Shadow matrix
x <- as.data.frame(abs(is.na(Samu2017)))
head(x)

#Mantém apenas as variáveis com valores ausentes e vê a sua correlação
y <- x[which(sapply(x, sd) > 0)]
cor(y)

#Busca padrões entre os valores específicos das variáveis e os NA
cor(Samu2017, y, use ="pairwise.complete.obs")

