test_that("Population comparison of 2 countries works", {
  expect_equal(pop_country_compare_1year(economicIndicators_data,'Spain', 'Italy', 1970),
               "The population for Spain in 1970 was 33792617 while the population for Italy in 1970 was 53324036")
  expect_error(ag_hunt_nature(economicIndicators_data,3,'Italy', 1970),"Please put in a character type.")

  error_test <-ag_hunt_nature(economicIndicators_data,'Spain','Italy', 1965)
  # expect error of the year is out of range
  expect_error(error_test,"Please type in a year that is within the range of 1970 and 2021")


})

