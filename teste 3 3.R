library(alr4)

data(Rateprof)

fit = lm(Rateprof$raterInterest ~ Rateprof$easiness)

summary(fit)