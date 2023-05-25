class(c("abc", "def")) #texto
class(1:10) #números inteiros, discretos
class(c(pi, exp(1))) #números decimais, contínuos
class(factor(c("abc", "def"))) #fatores

#criando estrutura de fatores
vrFactor <- factor(c("a", "b", "a", "a", "c"))
levels(vrFactor)

corBlusas <- c(1, 0, 2, 2, 0)
recode <- c(preta = 0, cinza = 1, branca = 2)
(corBlusas <- factor(corBlusas, levels = recode, labels = names(recode)))

#Ordenando as blusas pelas médias delas. Vai da que tem menor média até a maior
valor <- c(25, 50, 30, 75, 90)
(corBlusas <- reorder(corBlusas, valor))

#a nova ordem ficou: cinza, branca e preta
