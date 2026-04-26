#'Mean GDP value based on the Given year
#'@description Determines mean GDP of the given year
#'
#'@name mean_gdp_per_year
#'@details Filters a year and then finds the mean of of the GDP collumn
#'@param data the economicIndicators data set
#'@param year the year set for the country
#'@importFrom dplyr filter select mutate
#'@export
#'@examples mean_gdp_per_year(economicIndicators_data, 1970)
#'@keywords internal
library(dplyr)
mean_gdp_per_year<- function(data,year) {
  data <- data |>
    dplyr::filter(Year == year) |>
    dplyr::select(`Gross Domestic Product (GDP)`) |>
    dplyr::summarise(meanGDP = mean(`Gross Domestic Product (GDP)`))
  print(data)
}


