#Base USArrests é nativa do R, por isso não precisa carregá-la
USArrests

#Tabela de frequência absoluta da variável Rape da base USArrests
table(USArrests$Rape)

#Tabela de frequência relativa da variável Rape da base USArrests
prop.table(table(USArrests$Rape))

#Medidas de tendência central

#Média da variável Murder da base USArrests
mean(USArrests$Murder)

#Mediana da variável Murder da base USArrests
median(USArrests$Murder)

#Separatrizes da variável Assault da base de dados USArrests usando a função quantile (recorte de acordo com os números indicados por nós)
quantile(USArrests$Assault, probs = 0.75) #quartil
quantile(USArrests$Assault, probs = 0.10) #decil
quantile(USArrests$Assault, probs = 0.95) #percentil

#Desvio padrão da variável 
sd(USArrests$Assault)

#Sumário descritivo básico das variáveis
summary(USArrests)


#Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(USArrests[ , c(1:4)])
