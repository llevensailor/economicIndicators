test_that("Agriculture hunt nature works", {
  expect_equal(ag_hunt_nature(economicIndicators_data,'Spain', 1970), 3904684420)
  expect_error(ag_hunt_nature(economicIndicators_data,3, 1971))

  # expect error of the year is out of range
  expect_error(ag_hunt_nature(economicIndicators_data,'Spain', 1965))


})
