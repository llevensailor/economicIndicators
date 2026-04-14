#'Population country Comparison in one year
#'@description Compares a country's population in a specific year.
#'
#'@name pop_country_compare_1year
#'@details Takes in the data and has to check the range of the year before selecting the data and providing
#'the population in both countries.
#'@param data the economicIndicators data set
#'@param country1 the first country for comparison
#'@param country2 the second country for comparison
#'@param year the year set for comparison of the countries
#'@import dplyr
#'@export
#'@examples pop_country_compare_1year(economicIndicators_data,'Spain', 'Italy', 1970)
library(dplyr)
pop_country_compare_1year <- function(data,country1,country2,year){
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  if(!is.character(country1) || !is.character(country2)){
    stop("Please put in a character type.")
  }
  data2 <- data
  data <- data |>
    dplyr::filter(Country == country1, Year == year) |>
    select(Country, Year, Population)
  data2 <- data2 |>
    dplyr::filter(Country == country2, Year == year) |>
    select(Country, Year, Population)

  return(paste("The population for", country1, "in",year,"was", data$Population, "while the population for", country2, "in",year,"was", data2$Population))
}
