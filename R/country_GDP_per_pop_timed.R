#'Country GDP per population over Time
#'@description Determines a country's GDP per population over time.
#'
#'@name country_GDP_per_pop_timed
#'@details Computes the specific country's GDP per population by dividing the GDP by the population
#'and generates  with a timed series graph to show the change. The statistics provides information
#'about the GDP per population association with each year.
#'@param data economicIndicators dataset
#'@param country the country for the specific GDP per population
#'@import fpp3
#'@import stats
#'@examples country_GDP_per_pop_timed(economicIndicators_data,'Spain')
library(fpp3)
country_GDP_per_pop_timed <- function(data,country){
  data <- data |>
    dplyr::filter(Country == country) |>
    select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population,Year_dif = Year-1970)

  df <- ts(data$GDP_per_pop, frequency = 1, start = 1970)
  plot(df, main = paste(country, "'s GDP per Population over Time"),ylab = "GDP Per Population")

  print(lm(GDP_per_pop~Year_dif, data = data))
  summary(lm(GDP_per_pop~Year_dif, data = data))
}
