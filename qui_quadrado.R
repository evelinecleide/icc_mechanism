pacman::p_load(data.table, ggplot2, corrplot)

#download da base breast cancer
breast_cancer <- fread('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_tratadas/breast_cancer.csv', stringsAsFactors = T)
View(breast_cancer)

#tabela de contingência das variáveis idade e tamanho do tumor
breast_cancer_table <- table(breast_cancer$idade, breast_cancer$tumor_tamanho)
breast_cancer_table #para observar a tabela

#gráficos de dispersão pareados das variáveis
ggplot(breast_cancer) + aes(x = tumor_tamanho, fill = idade) + geom_bar(position = "fill")

#teste qui-quadrado
breast_cancer_test <- chisq.test(breast_cancer_table)
breast_cancer_test #p-valor acima de 0,05, ou seja, não rejeitamos a hipótese nula: as variáveis são independentes
breast_cancer_test$observed
breast_cancer_test$expected

#corrplot das variáveis (para os valores específicos em que possa haver associação)
corrplot(breast_cancer_test$residuals, is.cor = FALSE)

