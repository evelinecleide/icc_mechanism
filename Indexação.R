#Indexação de vetores

poissonSeatbealts<- rpois (200, 4)
poissonSeatbealts[3]
poissonSeatbealts[c(5:17)]


#Indexação de data.frame

listaAdolescentes$cidadeNatal #retorna apenas a coluna da cidade natal do data.frame listaAdolescentes

listaAdolescentes[2,] #retorna apenas a linha 2 e todas as colunas

listaAdolescentes[ , 'idade'] #retorna apenas a coluna idade, indexada pelo nome

#Operadores lógicos


match(listaAdolescentes$idade, 17) #função match para encontrar correspondência
