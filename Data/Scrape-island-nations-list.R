library(rvest)
library(tidyverse)

url <- "https://en.wikipedia.org/wiki/List_of_island_countries"

wikipedia_island_countries <- read_html(url)

list_countries <- wikipedia_island_countries %>% 
  html_nodes(".jquery-tablesorter .flagicon~ a+ a , td:nth-child(1) .flagicon+ a") %>% 
  html_text()
