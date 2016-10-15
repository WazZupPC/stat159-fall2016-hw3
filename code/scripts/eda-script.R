library(stats)
library(car)

Advertising <- read.csv("data/Advertising.csv", header = TRUE)
Advertising <- Advertising[,2:5]

sink("../../data/eda-output.txt")
print("Statistics of TV")
summary(Advertising$TV)
sink()

# Histogram of TV
png('../../images/histogram-tv.png')
hist(Advertising$TV, main = "Histogram of TV", xlab = "TV")
dev.off()


# Summary Statistics of Radio
sink("../../data/eda-output.txt", append = TRUE)
print("Statistics of Radio")
summary(Advertising$Radio)
sink()

# Histogram of Radio
png('../../images/histogram-radio.png')
hist(Advertising$Radio, main = "Histogram of Radio", xlab = "Radio")
dev.off()


# Summary Statistics of Newspaper
sink("../../data/eda-output.txt", append = TRUE)
print("Statistics of Newspaper")
summary(Advertising$Newspaper)
sink()

# Histogram of Newspaper
png('../../images/histogram-newspaper.png')
hist(Advertising$Newspaper, main = "Histogram of Newspaper", xlab = "Newspaper")
dev.off()


# Summary Statistics of Sales
sink("../../data/eda-output.txt", append=TRUE)
print("Statistics of Sales")
summary(Advertising$Sales)
sink()

# Histogram of Sales
png('../../images/histogram-sales.png')
hist(Advertising$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

# Scatterplot Matrix
png('../../images/scatterplot-matrix.png')
scatterplotMatrix(Advertising)
dev.off()

# Scatterplot between tv and sales
png('../../images/scatterplot-tv-sales.png')
plot(Advertising$TV, Advertising$Sales, main = "Scatterplot - TV and Sales", xlab = "TV", ylab = "Sales") 
dev.off()

# Scatterplot between radio and sales
png('../../images/scatterplot-radio-sales.png')
plot(Advertising$Radio, Advertising$Sales, main = "Scatterplot - Radio and Sales", xlab = "Radio", ylab = "Sales")
dev.off()

# Scatterplot between tv and sales
png('../../images/scatterplot-newspaper-sales.png')
plot(Advertising$Newspaper, Advertising$Sales, main = "Scatterplot - Newspaper and Sales", xlab = "Newspaper", ylab = "Sales")
dev.off()

# Matrix of Correlations
sink("../../data/eda-output.txt", append = TRUE)
print("Matrix of correlations")
cor(Advertising)
sink()

# Save the correlation matrix into binary format
cor <- cor(Advertising)
save(cor, file = "../../data/correlation-matrix.RData")

