library(dplyr)
gdp_per_pop1yr <- function(data,country,year){
  country_GDP <- data |>
    clean_names(data) |>
    select(country, year, population,gross_domestic_product_gdp)
  return(country_GDP$gross_domestic_product_gdp/country_GDP$population)

}
