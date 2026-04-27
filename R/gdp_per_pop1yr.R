#'Population country Comparison
#'@description Compares a country's population in a specific year.
#'
#'@name gdp_per_pop1yr
#'@details Takes in the data and has to check the range of the year before selecting the data and providing
#'the GDP per population in a country.
#'@param data the economicIndicators data set
#'@param country the country for the specific GDP per population
#'@param year the specific year for the country
#'@importFrom dplyr filter select mutate
#'@importFrom rlang .data
#'@keywords internal
#'@export
#'@examples gdp_per_pop1yr(economicIndicators_data,'Spain', 1970)
library(dplyr)
gdp_per_pop1yr <- function(data,country,year){
  if(!is.character(country)){
    stop("Please put in a character type.")
  }
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    dplyr::select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    dplyr::mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population)
    return(data$GDP_per_pop)
}
