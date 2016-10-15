setwd("./data")
advertising <- read.csv(file="Advertising.csv",head=TRUE,sep=",")

TV_data = advertising$TV
Sales_data = advertising$Sales
Radio_data = advertising$Radio
Newspaper_data = advertising$Newspaper

setwd("../images")

png('histogram-tv.png')
hist(TV_data,
     main="TV Advertising by Market",
     xlab="Budget ($1,000)",
     border="black",
     col="blue",
     las=1)
dev.off()

png('histogram-sales.png')
hist(Sales_data,
     main="Sales by Market",
     xlab="Sales (1,000 units)",
     border="black",
     col="red",
     las=1)
dev.off()

png('histogram-radio.png')
hist(Radio_data,
     main="Radio Advertising by Market",
     xlab="Budget ($1,000)",
     border="black",
     col="purple",
     las=1)
dev.off()

png('histogram-newspaper.png')
hist(Newspaper_data,
     main="Newspaper Advertising by Market",
     xlab="Budget ($1,000)",
     border="black",
     col="orange",
     las=1)
dev.off()

png('scatterplot-matrix.png')
pairs(advertising[2:5], title="Scatter plots for all variable pairs")
dev.off()

setwd("../data")

sink("eda-output.txt")
"TV Advertising Summary:"
summary(TV_data)
"Unit Sales Summary:"
summary(Sales_data)
sink()
