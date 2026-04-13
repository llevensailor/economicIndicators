#'Agricultural, hunting, forestry, fishing indicator
#'@description Determines  the indicator for Agricultural, hunting, forestry, fishing
#'
#'@name ag_hunt_nature
#'@details Takes in the data and selects a country set a certain year to find that indicator
#'in that country in a certain year.
#'@param data the economicIndicators data set
#'@param country the country to input
#'@param year the year set for the country
#'@import dplyr
#'@examples ag_hunt_nature(economicIndicators_data,'Spain', 1970)
ag_hunt_nature<- function(data,country,year) {
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    select(Country, Year, `Agriculture, hunting, forestry, fishing (ISIC A-B)`)
  print(data$`Agriculture, hunting, forestry, fishing (ISIC A-B)`)
}
