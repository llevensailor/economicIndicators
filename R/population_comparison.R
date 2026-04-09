library(ggplot2)
population_comparison <- function(data,country1,country2,year){
  data <- data |>
    dplyr::filter(Country == country1, Year == year) |>
    select(Country, Year, Population)
  data2 <- data |>
    dplyr::filter(Country == country2, Year == year) |>
    select(Country, Year, Population)

  print(data$Population)
  print(data2$Population)
}
