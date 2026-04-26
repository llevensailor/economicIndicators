#'Highest GDP value based on the Given year
#'@description Determines the country with the highest GDP based on the given year
#'
#'@name highest_gdp_per_year
#'@details Filters a year and then returns the top one using head(1)
#'@param data the economicIndicators data set
#'@param year the year set for the country
#'@importFrom dplyr filter select mutate
#'@importFrom rlang .data
#'@export
#'@examples highest_gdp_per_year(economicIndicators_data, 1970)
#'@keywords internal
library(dplyr)
highest_gdp_per_year<- function(data,year) {
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data <- data |>
    dplyr::filter(Year == year) |>
    dplyr::select(Country, Year, `Gross Domestic Product (GDP)`) |>
    dplyr::arrange(desc(`Gross Domestic Product (GDP)`)) |>
    head(1)
  print(data)
}


