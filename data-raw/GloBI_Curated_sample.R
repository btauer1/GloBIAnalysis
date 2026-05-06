## code to prepare `GloBI_Curated_sample` dataset goes here

library(readr)

GloBI_Curated_sample <- read_csv("data-raw/GloBI_Curated_sample.csv")
usethis::use_data(GloBI_Curated_sample, overwrite = TRUE)
