
library(dplyr)

summaryGeo <- function(x) {

  # uses curated sample
  GloBI_Curated_sample |>

    #extract observations with geographical data
    filter(coordinated == TRUE) |>

      #get geographical coordinate columns
      select(x, y) |>

        #find min, Q1, median, mean, Q2, max of geographical coordinate columns
        apply(2, summary)
}
