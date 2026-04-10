
ag_hunt_nature<- function(data,country,year) {
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    select(Country, Year, `Agriculture, hunting, forestry, fishing (ISIC A-B)`)
  print(data$`Agriculture, hunting, forestry, fishing (ISIC A-B)`)
}
