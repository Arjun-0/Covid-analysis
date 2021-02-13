library(here)
library(tidyverse)

source(here("data", "Scrape-island-nations-list.R"))
# from https://github.com/owid/covid-19-data/tree/master/public/data

world_covid_data <- read_csv(here("data", "owid-covid-data.csv"))

island_covid_data <- world_covid_data %>% 
  filter(location %in% list_countries)

write_csv(island_covid_data, file = here("data", "island_covid_data.csv"))
