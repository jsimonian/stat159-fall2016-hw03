setwd("./data")
advertising <- read.csv(file="Advertising.csv",head=TRUE,sep=",")

TV_data = advertising$TV
Sales_data = advertising$Sales

# As stated in the report, no need to include Newspaper
model = lm(formula = Sales ~ TV + Radio, data = advertising)

model_summary = summary(model)

save(model_summary, file = "regression.RData")

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
plot(model, which = 1)
dev.off()

png('normal-qq-plot.png')
plot(model, which = 2)
dev.off()

png('scale-location-plot.png')
plot(model, which = 3)
dev.off()
