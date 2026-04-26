test_that("Population comparison of 2 countries works", {
  expect_snapshot_output(pop_country_compare_1year(economicIndicators_data,'Spain', 'Italy', 1970))
  expect_error(ag_hunt_nature(economicIndicators_data,3,'Italy', 1970))

  # expect error of the year is out of range
  expect_error(ama_exchange_rate(economicIndicators_data,'Spain', 1965))


})

