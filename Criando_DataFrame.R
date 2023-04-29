install.packages("eeptools") 

library(eeptools)

#Vetor com o nome dos membros da União de Adolescentes

nomeAdolescentes <- c("Ellen", "Ewerton", "Jamilly", "Letícya", "Natacha", "Kauã", "Jhoão", "Miqueias")

#Vetor com o gênero dos adolescentes

gêneroAdolescentes <- c("F", "M", "F", "F", "F", "M", "M", "M")

#Vetor com a cidade natal dos adolescentes

cidadeNatalAdolescentes <- c("Recife", "São Lourenço da Mata", "Recife", "Camaragibe", "Limoeiro", "São Lourenço da Mata", "João Pessoa", "Salvador")

#Vetor com a data de nascimento dos adolescentes

nascimentoAdolescentes <- as.Date(c("2006-05-06", "2010-11-25", "2006-05-02", "2007-04-06", "2006-08-30", "2008-08-09", "2007-04-05", "2008-06-28"))

#Vetor com a idade dos adolescentes

idadeAdolescentes <- round( age_calc( nascimentoAdolescentes, units = 'years'))

#Data.frame com base nos vetores

UniãoDeAdolescentes <- data.frame(
  nome = nomeAdolescentes #nome dos adolescentes
  gênero =
)