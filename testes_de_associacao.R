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

#atribuir os dados às variáveis x e y (linear)
x_1 <- Facebook$`Page total likes`
y_teste <- 5 - 1.7*x


#plotagem do gráfico
plot(x_1, y_teste)

corList <- multi.cor(x_1, y_teste)
names(corList)
corList <- corList[c(1,5,6,7, 15)]
corList

#Quadrática
k <- Facebook$`Lifetime Post Total Impressions`
l <- 5 - 1.7*k + k^2

#plotagem do gráfico
plot(k, l)

corList <- multi.cor(k, l)
corList <- corList[c(1,5,6,7, 15)]
corList
