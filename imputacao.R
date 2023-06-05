library(data.table)
library(Hmisc)
library(VIM)

##Imputação numérica
WholeSaleDT <- WholeSale %>% setDT() #copia a base wholesale usando data.table

(WholeSaleNASeed <- round(runif(10, 1, 50))) #criando 10 valores aleatórios
(WholeSaleDT$Milk[WholeSaleNASeed] <- NA) #imputando NA nos valores aleatórios

#Tendência central
WholeSaleDT$Milk <- impute(WholeSaleDT$Milk, fun = mean) #substituindo os NA dos valores aleatórios pela média

#Teste para saber se o valor foi imputado
is.imputed(WholeSaleDT$Milk) #false/true
table(is.imputed(WholeSaleDT$Milk)) #saber quantos foram imputados ou não

view(WholeSaleDT)


## Hot deck
# imputação aleatória
WholeSaleDT$Milk[WholeSaleNASeed] <- NA #recolocando os NA

(WholeSaleDT$Milk <- impute(WholeSaleDT$Milk, "random")) #usando o Hmisc, fazemos imputação aleatória

# imputação por instâncias /semelhança
WholeSaleDT$Milk[WholeSaleNASeed] <- NA #recolocando os NAs

#Substituição por valor semelhante e em qual coluna
wholeSaleDT2 <- kNN(WholeSaleDT)
View(wholeSaleDT2)



