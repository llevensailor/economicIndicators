test_that("gdp per pop 1 year works", {
  expect_equal(gdp_per_pop1yr(economicIndicators_data,'Spain', 1970), 1213.051073)

  expect_error(gdp_per_pop1yr(economicIndicators_data,1, 1971),"Please put in a character type.")
  error_test <-gdp_per_pop1yr(economicIndicators_data,'Spain', 1965)

  # expect error of the year is out of range
  expect_error(error_test,"Please type in a year that is within the range of 1970 and 2021")



}
)
