## code to prepare `GloBI_taxonomic_review` dataset goes here

library(readr)
GloBI_taxonomic_review <- read_csv("data-raw/GloBI_taxonomic_review.csv")

usethis::use_data(GloBI_taxonomic_review, overwrite = TRUE)
