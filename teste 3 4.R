library(alr4)

data(Htwt)

fit = lm(Htwt$wt ~ Htwt$ht)

#2.1.1 o modelo de regressão faz sentido, porém a reta não é boa. Pelo gráfico, percebe-se uma relação entre o aumento de altura e o  aumento do peso nesse conjunto de dados. Porém falta observação dentro de cada nível.
plot(Htwt$ht, Htwt$wt)

#2.1.2
x.barra = mean(Htwt$ht)
y.barra = mean(Htwt$wt)

SXX = (length(Htwt$ht) - 1)*var(Htwt$ht)
SYY = (length(Htwt$wt) - 1)*var(Htwt$wt)
SXY = sum((Htwt$ht - mean(Htwt$ht))*Htwt$wt)

beta1 = SXY/SXX
beta0 = y.barra - beta1*x.barra

abline(beta0, beta1)

#2.1.3
y.chapeu = function(x) return ( beta0 + beta1*x )

sigma2.hat = sum( (Htwt$wt - y.chapeu(Htwt$ht))^2 )/(length(Htwt$wt) - 2)


sdBeta0 = sqrt( sigma2.hat* (  1/length(Htwt$wt)   + mean(Htwt$ht)^2/SXX) )
sdBeta1 = sqrt(sigma2.hat/SXX)
covBeta = -sigma2.hat*x.barra/SXX

#P-valor para Beta_0 = 0.583
#P-valor para Beta_1 = 0.173
#Não rejeita a hipotese nula, ie, não rejeita-se que os betas estão no modelo.
