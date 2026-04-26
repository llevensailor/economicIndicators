test_that("highest gdp per year works", {
  expected <- "United States"
  library(dplyr)
  tib <- highest_gdp_per_year(economicIndicators_data, 1970)
  expect_equal(tib$Country, expected)

  # expect error of the year is out of range
  expect_error(highest_gdp_per_year(economicIndicators_data,1965)
  )
}
)
