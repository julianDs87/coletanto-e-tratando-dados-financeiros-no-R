## Aula de hoje 08/01/24- Coleta de dados financeiros (açoes)

##Objetivo:
#Aprender mais sobre R
##Como coletar dados com R?

#####Pacotes

library(tidyverse)
library(tidyquant)


####Coletar dados de 01 ativo isolado

##exemplo

ITUB3 <- tq_get('ITUB3.SA',
                from = '2018-01-01',
                to= Sys.Date(),
                get= 'stock.prices')


head(ITUB3)
tail(ITUB3,7)
glimpse(ITUB3)


#coletar dados de vários ativos 

codigos <- c('ITUB4.SA', 'CPLE5', 'BBAS3.SA', 'PETR4', 'VALE3')

ativos <- tq_get(codigos,
                 from= '2018-01-01',
                 to= Sys.Date(),
                 get = 'stock.prices')

head(ativos)

###ver os retornos 

ativos %>%
  ggplot (aes (x= date, y= close, col= symbol))+
  geom_line(size = .8)


  
  

