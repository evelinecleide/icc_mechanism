tarefaSemente <- addTaskCallback(function(...) {set.seed(123);TRUE})
tarefaSemente

#distribuição normal
distNormal1 <- rnorm(200) #criação de distribuição normal (o rnorm cria essa distribuição normal e indica o número de casos)

summary(distNormal1)

#distribuição binomial
distBinomial1 <- rbinom(200, 1, 0.7) #criação de distribuição binomial (o rbinom cria essa distribuição binomial e indica casos, tamanho e probabilidade)

#repetições
classe1 <- c(rep('Criança', length(distBinomial1)/2), rep('Adolescente', length(distBinomial1)/2)) #vetor repetindo as classes Crianças e Adolescentes

#sequências
index1 <- seq(1, length(distNormal1)) #vetor com index dos dados (função lenght para pegar o total de casos)

removeTaskCallback(tarefaSemente)


