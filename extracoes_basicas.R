#arquivos xml: sigmodRecord
install.packages("XML")
library(XML)

sigmodRecord <- xmlToDataFrame("http://aiweb.cs.washington.edu/research/projects/xmltk/xmldata/data/sigmod-record/SigmodRecord.xml")

#arquivos json: gestão de dados da prefeitura do Recife
install.packages("rjson")
library(rjson)

gestaoDeDados <- fromJSON(file = "http://dados.recife.pe.gov.br/dataset/2c9924a9-c2fa-4bf9-ab21-97cbc19efc90/resource/540b07e8-0932-4fce-ab16-c719fb885c34/download/dicionario-da-gestao-de-dados.json")
gestaoDeDados <- as.data.frame(gestaoDeDados)

#arquivos csv: abrigos temporários 
abrigosTemporarios <- read.csv2("http://dados.recife.pe.gov.br/dataset/1413e2a8-c797-4b33-b906-b3b45dcb98b1/resource/4f318be2-007e-4884-98fc-ef2cea34d6ee/download/abrigos-latitude-longitude-abrigo-geo-09.06.csv", sep = ";" , encoding = "UTF-8")
