install.packages("plotly")
install.packages("EnvStats")
library(data.table)
library(dplyr)
library(plotly)

#Importação da base de dados Whole Sale Customers
covid19PE <- fread('https://dados.seplag.pe.gov.br/apps/basegeral.csv')

covid19PEMun <- covid19PE %>% count(municipio, sort = T, name = 'casos') %>% mutate(casos2 = sqrt(casos), casosLog = log10(casos))

#Outliers em variáveis

#Distância interquartil
plot_ly(y = covid19PEMun$casosLog, type = "box", text = covid19PEMun$municipio, boxpoints = "all", jitter = 0.3)
boxplot.stats(covid19PEMun$casosLog)$out
boxplot.stats(covid19PEMun$casosLog, coef = 2)$out

covid19PEOut <- boxplot.stats(covid19PEMun$casosLog)$out
covid19PEOutIndex <- which(covid19PEMun$casosLog %in% c(covid19PEOut))
covid19PEOutIndex

#Filtro de Hamper
lower_bound <- median(covid19PEMun$casosLog) - 3 * mad(covid19PEMun$casos2, constant = 1)
upper_bound <- median(covid19PEMun$casosLog) + 3 * mad(covid19PEMun$casos2, constant = 1)
(outlier_ind <- which(covid19PEMun$casosLog < lower_bound | covid19PEMun$casos2 > upper_bound))

#Teste de Rosner
library(EnvStats)
covid19PERosner <- rosnerTest(covid19PEMun$casos, k = 10)
covid19PERosner
covid19PERosner$all.stats
