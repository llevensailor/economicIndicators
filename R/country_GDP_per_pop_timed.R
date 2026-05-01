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
#'@importFrom dplyr filter select mutate
#'@importFrom graphics abline
#'@importFrom rlang .data
#'@importFrom utils globalVariables
#'@keywords internal
#'@export
#'@examples country_GDP_per_pop_timed(economicIndicators_data,'Spain')
library(utils)
utils::globalVariables(c("Year", "Gross Domestic Product (GDP)", "Country"))
country_GDP_per_pop_timed <- function(data,country){
  if(!is.character(country)){
    stop("Please put in a character type.")
  }
  if(!country %in% unique(data$Country) ){
    warning("This country may not exist in the data.")
  }
  if(!country %in% unique(data$Country) ){
    warning("This country may not exist in the data.")
  }

  country <- stringr::str_to_title(country)

  data <- data |>
    dplyr::filter(Country == country) |>
    dplyr::select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    dplyr::mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population,Year_dif = Year-1970)
  model <- lm(GDP_per_pop~Year, data = data)

  df <- ts(data$GDP_per_pop, frequency = 1, start = 1970)
  plot(df, main = paste(country, "'s GDP per Population over Time"),ylab = "GDP Per Population")

  abline(model, col = "red", lwd = 2)

  return(model)
}

