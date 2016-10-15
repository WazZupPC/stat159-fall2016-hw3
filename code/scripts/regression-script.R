
Advertising <- read.csv("data/Advertising.csv", header = TRUE)
Advertising <- Advertising[, 2:5]

lm_ad <- lm(Sales ~ TV + Radio + Newspaper, data = Advertising)
summary <- summary(lm_ad)
save(lm_ad, summary, file = "data/regression.RData")
summary(lm_ad)

# Residual Plot
png('images/residual-plot.png')
plot(lm_ad, which = 1, caption = "Residual vs. Fitted Value Plot")
dev.off()

# Scale Location Plot
png('images/scale-location-plot.png')
plot(lm_ad, which = 3, caption = "Scale Location Plot")
dev.off()

# Normal Q-Q Plot
png('images/normal-qq-plot.png')
plot(lm_ad, which = 2, caption = "Normal Q-Q Plot")
dev.off()

