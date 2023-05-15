#listagem de todos os objetos no R 
ls() #"a", "b", "c", "naZero", colunas_iguais", "i","sinistrosRecife", sinistrosRecife2018Raw", "sinistrosRecife2019Raw", "sinistrosRecifeRaw", "x"


#tamanho dos objetos intermediários
for (itm in ls()) {
  print(formatC(c(itm, object.size(get(itm))),
                format="d",
                width=30),
        quote=F)
}
#o objeto que mais está ocupando espaço é o "sinistrosRecifeRaw": 12060112

#para excluir os objetos da área intermediária que não os listados na atividade
rm(list = c("a", "b", "c", "colunas_iguais", "i", "sinistrosRecife", "sinistrosRecife2018Raw", "sinistrosRecife2019Raw", "x", "itm"))

#conferindo os itens que restaram
ls()


#ler as bases limpas
saveRDS(sinistrosRecifeRaw,  "bases_tratadas/sinistrosRecife.rds")
write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.cvs")
