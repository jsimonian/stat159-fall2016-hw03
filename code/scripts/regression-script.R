setwd("./data")
advertising <- read.csv(file="Advertising.csv",head=TRUE,sep=",")

TV_data = advertising$TV
Sales_data = advertising$Sales


TV_model <- lm(Sales ~ TV, data = advertising)
Radio_model <- lm(Sales ~ Radio, data = advertising)
Newspaper_model <- lm(Sales ~ Newspaper, data = advertising)
TV_Radio_model <- lm(Sales ~ TV + Radio, data = advertising)
TV_Newspaper_model <- lm(Sales ~ TV + Newspaper, data = advertising)
Radio_Newspaper_model <- lm(Sales ~ Radio + Newspaper, data = advertising)
Triple_model <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)
save(TV_model,
     Radio_model,
     Newspaper_model,
     TV_Radio_model,
     TV_Newspaper_model,
     Radio_Newspaper_model,
     Triple_model,
     file = "regression.RData")

setwd("../images")

png('scatterplot-tv-sales.png')
plot(advertising$TV,
     advertising$Sales,
     main = "Effect of TV Advertising on Sales",
     xlab = "TV Advertising Budget",
     ylab = "Sales",
     pch = 20)
TV_model = lm(formula = Sales ~ TV, data = advertising)
abline(TV_model, col="red")
dev.off()

png('scatterplot-radio-sales.png')
plot(advertising$Radio,
     advertising$Sales,
     main = "Effect of Radio Advertising on Sales",
     xlab = "Radio Advertising Budget",
     ylab = "Sales",
     pch = 20)
Radio_model = lm(formula = Sales ~ Radio, data = advertising)
abline(Radio_model, col="red")
dev.off()

png('scatterplot-newspaper-sales.png')
plot(advertising$Newspaper,
     advertising$Sales,
     main = "Effect of Newspaper Advertising on Sales",
     xlab = "Newspaper Advertising Budget",
     ylab = "Sales",
     pch = 20)
Newspaper_model = lm(formula = Sales ~ Newspaper, data = advertising)
abline(Newspaper_model, col="red")
dev.off()

# R's plot commmand takes care of all three of these for us

png('residual-plot.png')
plot(TV_Radio_model, which = 1)
dev.off()

png('normal-qq-plot.png')
plot(TV_Radio_model, which = 2)
dev.off()

png('scale-location-plot.png')
plot(TV_Radio_model, which = 3)
dev.off()
