source("../functions/regression-functions.R")

context("testing regression functions")

# first multiple regression
reg_cars <- lm(mpg ~ disp + hp, data = mtcars)
# and its summary
regsum_cars <- summary(reg_cars)


test_that("residual_sum_squares function works as expected", {

  RSS_cars <- residual_sum_squares(reg_cars)

  # Sanity checks
  expect_gt(RSS_cars, 0)
  expect_equal(length(RSS_cars), 1)

  # Specific tests
  expect_equal(RSS_cars, sum(regsum_cars$residuals^2))
})

test_that("total_sum_squares function works as expected", {

  TSS_cars <- total_sum_squares(reg_cars)

  # Sanity checks
  expect_gt(TSS_cars, 0)
  expect_equal(length(TSS_cars), 1)

  # Specific tests
  expect_equal(TSS_cars, sum((mtcars$mpg - mean(mtcars$mpg))^2))
})

test_that("r_squared function works as expected", {

  R2_cars <- r_squared(reg_cars)

  # Sanity checks
  expect_gt(R2_cars, 0)
  expect_lt(R2_cars, 1)
  expect_equal(length(R2_cars), 1)

  # Specific tests
  expect_equal(R2_cars, regsum_cars$r.squared)
})


test_that("f_statistic function works as expected", {

  F_cars <- f_statistic(reg_cars)

  # Sanity checks
  expect_gt(F_cars, 0)
  expect_equal(length(F_cars), 1)

  # Specific tests
  expect_equal(F_cars, regsum_cars$fstatistic[[1]])
})

test_that("residual_std_error function works as expected", {

  RSE_cars <- residual_std_error(reg_cars)

  expect_gt(RSE_cars, 0)
  expect_equal(length(RSE_cars), 1)

  # Specific tests
  expect_equal(RSE_cars, regsum_cars$sigma)
})
