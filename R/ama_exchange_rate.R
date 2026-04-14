#'Country AMA exchange rate
#'@description Provides a country's AMA exchange rate in a specific year
#'
#'@name ama_exchange_rate
#'@details Takes in the data and has to check the range of the year before selecting the data and providing
#'the GDP per population in a country.
#'@param data the economicIndicators data set
#'@param country the country for the specific AMA exchange rate
#'@param year the specific year for the country
#'@import dplyr
#'@export
#'@examples ama_exchange_rate(economicIndicators_data,'Spain', 1970)
library(dplyr)
ama_exchange_rate <- function(data,country,year){
  if(!is.character(country)){
    stop("Please put in a character type.")
  }
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    select(Country, Year, `AMA exchange rate`)
  return(data$`AMA exchange rate`)
}
