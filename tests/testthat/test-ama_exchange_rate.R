test_that("AMA exchange rate works", {
  expect_equal(ama_exchange_rate(economicIndicators_data,'Spain', 1970), 0.420708473)
  expect_error(gdp_per_pop1yr(economicIndicators_data,3, 1971))

  # expect error of the year is out of range
  expect_error(ama_exchange_rate(economicIndicators_data,'Spain', 1965))


})
