library(data.table)

#download da base facebook
Facebook <- fread("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)

View(Facebook)

##teste de correlação entre as variáveis Paid (se o post foi pago ou não), e a variável Like (quantidade de likes)
cor.test(Facebook$Paid, Facebook$like)

#H0:variáveis não têm associação, ou seja, são independentes. p-valor (p-value) > 0.05
#H1:variáveis têm associação, ou seja, são dependentes. p-valor (p-value) <= 0.05
#com isso, temos que a hipótese nula foi rejeitada, visto que o p-valor for abaixo de 0,05: p-value = 0.01345
#a correlação foi de 0.1106943, ou seja, se o post foi pago, a tendência é que tenha mais likes

