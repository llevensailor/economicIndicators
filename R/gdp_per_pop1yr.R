library(dplyr)
gdp_per_pop1yr <- function(data,country,year){
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population)
    return(data$GDP_per_pop)
}
