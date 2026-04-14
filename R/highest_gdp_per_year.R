#'Highest GDP value based on the Given year
#'@description Determines the country with the highest GDP based on the given year
#'
#'@name highest_gdp_per_year
#'@details
#'@param data the economicIndicators data set
#'@param year the year set for the country
#'@import dplyr
#'@examples highest_gdp_per_year(economicIndicators_data, 1970)
highest_gdp_per_year<- function(data,year) {
  data <- data |>
    dplyr::filter(Year == year) |>
    dplyr::select(Country, Year, `Gross Domestic Product (GDP)`) |>
    dplyr::arrange(desc(`Gross Domestic Product (GDP)`)) |>
    head(1)
  print(data)
}

