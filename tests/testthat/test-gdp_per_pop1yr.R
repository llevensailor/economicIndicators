test_that("gdp per pop 1 year works", {
  expect_equal(gdp_per_pop1yr(economicIndicators_data,'Spain', 1970), 1213.051073)

  expect_error(gdp_per_pop1yr(economicIndicators_data,1, 1971))
  # expect error of the year is out of range
  expect_error(gdp_per_pop1yr(economicIndicators_data,'Spain', 1965)
)



}
)
