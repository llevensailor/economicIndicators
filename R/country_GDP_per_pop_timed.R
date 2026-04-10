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
