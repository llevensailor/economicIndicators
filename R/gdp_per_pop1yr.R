library(dplyr)
gdp_per_pop1yr <- function(data,country,year){
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population)
    return(data$GDP_per_pop)
}
