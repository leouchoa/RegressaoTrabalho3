library(alr4)

data(wblake)

vLength = rep(0, max(wblake$Age))
vSQLength = rep(0, max(wblake$Age))

for( j in 1:length(wblake$Length) ){
  vLength[wblake$Age[j]] = vLength[wblake$Age[j]] + wblake$Length[j]
  vSQLength[wblake$Age[j]]= vSQLength[wblake$Age[j]] + (wblake$Length[j])^2
  
}

meanLength = vLength / as.integer(table(wblake$Age))

(vSQLength - table(wblake$Age)*(meanLength^2))/(table(wblake$Age) - 1)

media = rep(0, 8)
variancia = rep(0, 8)

for(i in 1:8){
media[i] = mean(wblake$Length[which(wblake$Age == i)])
variancia[i] = var(wblake$Length[which(wblake$Age == i)])
}

media

variancia

plot(media)

plot(wblake$Age, wblake$Length)
lines(media, type="b")

lm(wblake$Length ~ wblake$Age)

abline(65.53, 30.32)

plot(sqrt(variancia))
abline(mean(sqrt(variancia)), 0)