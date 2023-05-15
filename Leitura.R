installed.packages("microbenchmark")

library(microbenchmark)

#exportação em formato nativo do R
saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

#exportação em formato (.csv) - padrão para interoperabilidade
write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv")

#exportação em formato (.xls) - excel
write.table(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.xls")

#carregamento da base de dados em formato nativo R
sinistrosRecife <- readRDS('bases_tratadas/sinistrosRecife.rds')

#carregamento da base de dados em formato tabular (.csv) - padrão para interoperabilidade
sinistrosRecife <- read.csv2('bases_tratadas/sinistrosRecife.csv', sep = ';')

#carregamento da base de dados em formato tabular (.xls) - excel
sinistrosRecife <- read.table('bases_tratadas/sinistrosRecife.xls', sep = ';')

#comparação dos três processos de exportação, usando a função microbenchmark

microbenchmark(a <- saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds"), b <- write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv"), c <- write.table(sinistrosRecife, "bases_tratadas/sinistrosRecife.xls"), times = 20L) #o mais rápido foi o .rds e o mais lento o .csv

microbenchmark(a <- readRDS('bases_tratadas/sinistrosRecife.rds'), b <- read.csv2('bases_tratadas/sinistrosRecife.csv', sep = ';'), c <- read.table('bases_tratadas/sinistrosRecife.xls', sep = ';'), times = 20L) #o que levou menos tempo para ser lido foi o .xls e o que mais demorou foi o .csv

