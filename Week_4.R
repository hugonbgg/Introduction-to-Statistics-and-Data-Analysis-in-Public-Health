#Importando cancer data
dados = read.csv("dados/cancer-data-for-MOOC-1-1.csv")
summary(dados)
dados
head(dados)


#Definindo genero com factor
gender <- as.factor(dados[,'gender'])
table(gender)

#An�lise descritiva

summary(bmi)
table(fruitveg)

#Histograma
hist(fruitveg)

#Outra maneira de somar e criar variavel
dados$fruitveg <- dados$fruit + dados$veg
table(dados$fruitveg)
head(dados)

#Criando uma vari�vel bin�ria informando se come 5 por��es ou n�o por dia
dados$five_a_day <- ifelse(dados$fruitveg >= 5, 1, 0)

#Criando uma vari�vel com o BMI saud�vel
dados$healthy_BMI <- ifelse(dados$bmi > 18.5 & dados$bmi < 25,1, 0)

#teste qui quadrado
chisq.test(x= dados$five_a_day, y = dados$cancer)
chisq.test(x= dados$gender, y = dados$five_a_day)

#t.test
t.test(dados$bmi~dados$cancer)

t.test(dados$bmi, mu = 25)

#Exercicio
cancer <- dados$cancer

overweight <- ifelse(dados$bmi >= 25, 1, 0)
chisq.test(x = overweight, y = cancer)
