#Importando cancer data
dados = read.csv("dados/cancer-data-for-MOOC-1-1.csv")
summary(dados)
dados
head(dados)

#Linha 4
dados[4,]

#5 primeiras linhas
dados[1:5,]

#Ver a dimensão
dim(dados)

#Exibindo coluna por nome
dados[,'gender']
dados[,'age']

#Criando variáveis com as colunas genero e idade
gender <- dados[,'gender']
age <- dados[,'age']
bmi <- dados[,'bmi']
fruit <- dados[,'fruit']
veg <- dados[,'veg']
fruitveg <- fruit + veg

#Definindo genero com factor
gender <- as.factor(dados[,'gender'])
table(gender)

#Análise descritiva

summary(bmi)
table(fruitveg)

#Histograma
hist(fruitveg)

#Outra maneira de somar e criar variavel
dados$fruitveg <- dados$fruit + dados$veg
table(dados$fruitveg)
