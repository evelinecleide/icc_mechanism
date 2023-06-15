pacman::p_load(corrplot, dplyr, ggplot2, data.table)

#download da base facebook
Facebook <- fread("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)

#remoção da variável categórica (variável Type)
Facebook2 <- Facebook  %>% select(-Type)
View(Facebook2)

#criação de tabela de correlação entre todas as variáveis
cor(Facebook2)

#gráficos de dispersão das variáveis
pairs(Facebook2)

#corrplot das variáveis (forma mais clara de vermos a correlação entre elas: quanto mais escuro, mais intensa é a correlação; em vermelho: correlações negativas;em azul: correlações positivas)
facebookCor <- cor(Facebook2)
corrplot(facebookCor, method = "number", order = "alphabet")
corrplot(facebookCor, order = "alphabet")
