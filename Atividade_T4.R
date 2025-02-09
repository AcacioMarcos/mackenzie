##### ATIVIDADE DE APROFUNDAMENTO DA TRILHA 4
#### DISCIPLINA DE VISUALIZA��O DE DADOS
### MARCOS VINICIUS ACACIO DOS SANTOS
## RA 9217847

#Instalando os pacotes

install.packages("lubridate")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggpubr")
install.packages("data.table")
install.packages("knitr")
install.packages("skimr")

#Carregando as bibliotecas

library("lubridate")
library("ggplot2")
library("dplyr")
library("ggpubr")
library("readr")
library("data.table")
library("knitr")
library("skimr")

#Carregando dados

netflix <- read.csv(
  file = "C:/Users/MarcosAc�cio/OneDrive - GT Group/�rea de Trabalho/Mackenzie/Visualiza��o de Dados para Tomada de Decisao/Trilha 4/Atividade_Aprofundamento/netflix_titles.csv",
  sep = ','
)

#Verifica��o do conte�do

nrow(netflix)

ncol(netflix)

#Estrutura do Conjunto

str(netflix)

#Explora��o inicial e final do conjunto

head(select(netflix, c(1:12, 10)))

tail(select(netflix, c(1:12, 10)))

#Sumariza��o dos dados

summary(netflix)

##Histograma

ggplot(netflix,aes(release_year))+geom_line(aes(fill=..count..),stat="bin",binwidth=1) +
  labs(title = "Quantidade de Filmes por Ano de Lan�amento",
       x = "Ano de Lan�amento", y = "Quantidade", caption = "Fonte: Elabotado por Marcos Acacio") + 
  labs_pubr() + theme_pubr() + theme(plot.caption = element_text(hjust = 0))

