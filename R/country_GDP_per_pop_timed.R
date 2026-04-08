country_GDP_per_pop_timed <- function(data,country){
  data <- data |>
    dplyr::filter(Country == country) |>
    select(Country, Year, Population, `Gross Domestic Product (GDP)`) |>
    mutate(GDP_per_pop = `Gross Domestic Product (GDP)`/Population)
  lm(Year~Population, data = data)
  ggplot(data = data, mapping = aes(x = Year, y = Population)) + geom_line()
}
