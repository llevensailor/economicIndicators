#'Lowest GDP value based on the Given year
#'@description Determines the country with the lowest GDP based on the given year
#'
#'@name lowest_gdp_per_year
#'@details Filters a year and then returns the top one using head(1)
#'@param data the economicIndicators data set
#'@param year the year set for the country
#'@importFrom dplyr filter select mutate
#'@export
#'@examples lowest_gdp_per_year(economicIndicators_data, 1970)
#'@keywords internal
library(dplyr)
lowest_gdp_per_year<- function(data,year) {
  data <- data |>
    dplyr::filter(Year == year) |>
    dplyr::select(Country, Year, `Gross Domestic Product (GDP)`) |>
    dplyr::arrange(`Gross Domestic Product (GDP)`) |>
    head(1)
  print(data)
}


