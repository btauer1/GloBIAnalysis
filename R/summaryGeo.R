#' Summary statistics for geographical distributions
#'
#' @description Function that returns [INSERT SUMMARY STATISTICS]
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import dplyr
#' @examples
#' Put function call as example.
#'

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
