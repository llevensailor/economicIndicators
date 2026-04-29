#'Mean GDP value based on the Given year
#'@description Determines mean GDP of the given year
#'
#'@name mean_gdp_per_year
#'@details Filters a year and then finds the mean of of the GDP collumn
#'@param data the economicIndicators data set
#'@param year the year set for the country
#'@importFrom dplyr filter select mutate
#'@importFrom utils globalVariables
#'@export
#'@examples mean_gdp_per_year(economicIndicators_data, 1970)
#'@keywords internal
library(dplyr)
library(utils)
utils::globalVariables(c("Year", "Gross Domestic Product (GDP)"))
mean_gdp_per_year<- function(data,year) {
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data <- data |>
    dplyr::filter(Year == year) |>
    dplyr::select(`Gross Domestic Product (GDP)`) |>
    dplyr::mutate(meanGDP = mean(`Gross Domestic Product (GDP)`))
  return(data$meanGDP[1])
}


