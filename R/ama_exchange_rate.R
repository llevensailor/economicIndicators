library(dplyr)
ama_exchange_rate <- function(data,country,year){
  if(year<1970 || year>2021){
    stop("Please type in a year that is within the range of 1970 and 2021")
  }
  data <- data |>
    dplyr::filter(Country == country, Year == year) |>
    select(Country, Year, `AMA exchange rate`)
  return(data$`AMA exchange rate`)
}
