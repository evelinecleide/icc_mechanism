pacman::p_load(ccaPP, lsa, minerva, Rfast, data.table)

#criando função para rodar várias associações
multi.cor <- function(x, y) {
  c(
    cor = cor(x, y), # Correlação
    dcor = dcor(x, y), # Distance correlation
    cosine = cosine(x, y), # Distância do Cosseno 
    maxCor = maxCorProj(x, y), # Maximal correlation
    MIC = mine (x, y) #  Maximal Information Coefficient
  )
}

#carregamento da base
Facebook <- fread("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)

#Exemplo linear 1
x <- Facebook$`Page total likes`
y <- Facebook$`Total Interactions` - 1.7*x

#plotagem do gráfico
plot(x, y)

corList <- multi.cor(x, y)
names(corList)
corList <- corList[c(1,5,6,7, 15)]
corList

#Exemplo linear 1.1 
y1 <- y - runif(500, 0, 6000)

#plotagem do gráfico
plot(x, y1)

corList1 <- multi.cor(x, y1)
corList1 <- corList1[c(1,5,6,7, 15)]
corList1

#Exemplo linear 1.2
y2 <- y - runif(500, 0, 6500)

#plotagem do gráfico
plot(x, y2)

corList2 <- multi.cor(x, y2)
corList2 <- corList2[c(1,5,6,7, 15)]
corList2

#Exemplo quadrática 2 
k <- Facebook$`Page total likes`
l <- Facebook$`Total Interactions` - 1.7*k + k^2

#plotagem do gráfico
plot(k, l)

corList <- multi.cor(k, l)
corList <- corList[c(1,5,6,7, 15)]
corList

#Exemplo quadrática 2.1
l1 <- l - runif(500, 0, 7000)

#plotagem do gráfico
plot(k, l1)

corList3 <- multi.cor(k, l1)
corList3 <- corList3[c(1,5,6,7, 15)]
corList3

#Exemplo quadrática 2.2
l2 <- l - runif(500, 0, 7500)

#plotagem do gráfico
plot(k, l2)

corList4 <- multi.cor(k, l2)
corList4 <- corList4[c(1,5,6,7, 15)]
corList4
