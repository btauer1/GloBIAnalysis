## code to prepare `GloBI_bee_plant_Interactions_Summary` dataset goes here

library(readr)
GloBI_bee_plant_Interactions_Summary <- read_csv("data-raw/GloBI_bee_plant_Interactions_Summary.csv")

usethis::use_data(GloBI_bee_plant_Interactions_Summary, overwrite = TRUE)
