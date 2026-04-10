library(dplyr)
population_comparison_2countries <- function(data,country1,country2,year){
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data2 <- data
  data <- data |>
    dplyr::filter(Country == country1, Year == year) |>
    select(Country, Year, Population)
  data2 <- data2 |>
    dplyr::filter(Country == country2, Year == year) |>
    select(Country, Year, Population)

  print(paste("The population for", country1, "in",year,"was", data$Population))
  print(paste("The population for", country2, "in",year,"was", data2$Population))
}
