test_that("Country GDP per population timed works", {
  country <- "Spain"
  result <- country_GDP_per_pop_timed(economicIndicators_data,country)
  expect_s3_class(result,"lm")
  expect_error(country_GDP_per_pop_timed(economicIndicators_data,2))
  library(dplyr)
  economicIndicators_data <- economicIndicators_data |>
    dplyr::filter(Country == country) |>
    select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population,Year_dif = Year-1970)
  expected_lm <- lm(GDP_per_pop~Year_dif, data = economicIndicators_data)
  expect_equal(result$coefficients,expected_lm$coefficients)

})
