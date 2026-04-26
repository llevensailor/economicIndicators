test_that("mean gdp per year works", {
  expect_equal(mean_gdp_per_year(economicIndicators_data,1970), 18243661311)

  # expect error of the year is out of range
  expect_error(gdp_per_pop1yr(economicIndicators_data, 1965)
  )
}
)
