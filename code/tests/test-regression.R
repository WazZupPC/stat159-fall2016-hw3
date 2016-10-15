source("functions/regression-functions.R")

context("Test for regression statistics") 

test_that("residual sum of squares", {
	advertising <- read.csv("../data/Advertising.csv", header = TRUE)
	x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

	expect_equal(residual_sum_squares(x), x$sigma)
})

test_that("r squared", {
  advertising <- read.csv("../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(r_squared(x), 0.897)
})


test_that("F statistics", {
  advertising <- read.csv("../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(f_statistic(x), 570)
})


test_that("residual standard error", {
  advertising <- read.csv("../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(residual_std_error(x), 1.69)
})
