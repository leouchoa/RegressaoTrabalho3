library(alr4)
data(UBSprices)

#2.2.1
#Abaixo da reta o preço em 2003
#era mais caro, e acima da reta,
#2009 o preço era mais caro.

#2.2.2
#max em 53 Vilnius
#min em 36 Mumbai

#2.2.3
#Sugere que sim, os preços para o arroz são menores em 2009 do que em 2003.

#2.2.4
fit = lm(UBSprices$rice2009 ~ UBSprices$rice2003)
#Concentração de valores perto de (0,20)x(0,20) e valor mínimo extremo em Mumbai e Nairobi, e dois pontos extremos
#de máximo em Vilnius e Budapest. A reta de regressão linear simples não explica bem estes pontos extremos.
#A variabilidade não parece constante entre os Xis.

#2.3.1
#A transformação dos dados diminui a dispersão. A variabilidade parece ser constante, os eixos não estão mais
#viesados. Ainda há outliers.

#2.3.2