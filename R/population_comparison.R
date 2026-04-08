library(ggplot2)
population_comparison <- function(data,country1,country2,year){
  data <- data |>
    dplyr::filter(Country == country1, Country == country2, Year == year) |>
    select(Country, Year, Population)
  print(data$Population)
}
