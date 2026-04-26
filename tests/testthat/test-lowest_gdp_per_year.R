test_that("lowest gdp per year works", {
  expected <- "Tuvalu"
  tib <- lowest_gdp_per_year(economicIndicators_data, 1970)
  library(dplyr)
  expect_equal(tib$Country, expected)

  # expect error of the year is out of range
  expect_error(lowest_gdp_per_year(economicIndicators_data,1965)
  )
}
)
