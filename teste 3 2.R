library(alr4)

data(Mitchell)

plot(Mitchell$Month, Mitchell$Temp, ylim=c(min(Mitchell$Temp), max(Mitchell$Temp)))

fit = lm(Mitchell$Temp ~ Mitchell$Month)

summary(fit)

cor(Mitchell$Month, Mitchell$Temp)

plot(Mitchell$Month, (Mitchell$Temp))