test_that("Agriculture hunt nature works", {
  expect_equal(ag_hunt_nature(economicIndicators_data,'Spain', 1970), 3904684420)
  expect_error(ag_hunt_nature(economicIndicators_data,3, 1971),"Please put in a character type.")

  error_test <-ag_hunt_nature(economicIndicators_data,'Spain', 1965)
  # expect error of the year is out of range
  expect_error(error_test,"Please type in a year that is within the range of 1970 and 2021")


})
