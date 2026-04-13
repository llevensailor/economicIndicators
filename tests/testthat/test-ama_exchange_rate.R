test_that("AMA exchange rate works", {
  expect_equal(ama_exchange_rate(economicIndicators_data,'Spain', 1970), 0.420708473)

  error_test <-ama_exchange_rate(economicIndicators_data,'Spain', 1965)
  # expect error of the year is out of range
  expect_error(error_test,"Please type in a year that is within the range of 1970 and 2021")


})
