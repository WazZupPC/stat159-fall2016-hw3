
Advertising <- read.csv("data/Advertising.csv", header = TRUE)

lm <- lm(Sales ~ TV + Radio + Newspaper, data = Advertising)

# Residual Sum of Squares
residual_sum_squares <- function(lm) {
    summary <- summary(lm)
    sum(summary$residuals^2)
}

# Total Sum of Squares
total_sum_squares <- function(lm) {
    sum((lm$fitted.values-mean(lm$fitted.values)) ^ 2)
}

# R Squared
r_squared <- function(lm) {
    rss <- residual_sum_squares(lm)
    tss <- total_sum_squares(lm)
    (tss-rss) / tss
}

# F statistics
f_statistic <- function(lm) {
    rss <- residual_sum_squares(lm)
    tss <- total_sum_squares(lm)
    ((tss-rss)/3)/(rss/196)
}

# Residual Standard Error
residual_std_error <- function(lm) {
    rss <- residual_sum_squares(lm)
    sqrt(rss/196)
}

