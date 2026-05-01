#'Agricultural, hunting, forestry, fishing indicator
#'@description Determines  the indicator for Agricultural, hunting, forestry, fishing
#'
#'@name ag_hunt_nature
#'@details Takes in the data and selects a country set a certain year to find that indicator
#'in that country in a certain year.
#'@param data the economicIndicators data set
#'@param country the country to input
#'@param year the year set for the country
#'@importFrom dplyr filter select
#'@importFrom rlang .data
#'@importFrom utils globalVariables
#'@keywords internal
#'@export
#'@examples ag_hunt_nature(economicIndicators_data,'Spain', 1970)
library(utils)
utils::globalVariables(c("Year", "Agriculture, hunting, forestry, fishing (ISIC A-B)", "Country"))
ag_hunt_nature<- function(data,country,year) {
  if(!is.character(country)){
    stop("Please put in a character type.")
  }
  if(year< 1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  if(!country %in% unique(data$Country) ){
    warning("This country may not exist in the data.")
  }
  country <- stringr::str_to_title(country)

  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    dplyr::select(Country, Year, `Agriculture, hunting, forestry, fishing (ISIC A-B)`)
  return(data$`Agriculture, hunting, forestry, fishing (ISIC A-B)`)
}

