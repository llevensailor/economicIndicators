test_that("gdp per pop 1 year works", {

  expect_equal(gdp_per_pop1yr(economicIndicators_data,'Spain', 1970), 1213.051073)
  # expect error of the year is out of range
  expect_error(gdp_per_pop1yr(economicIndicators_data,'Spain', 1965, "Please type in a year that is within the range of 1970 and 2021"))

}
)
