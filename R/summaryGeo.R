utils::globalVariables(c("coordinated", "x", "y"))

#' Summary statistics for geographical distributions
#'
#' @description Function that returns min, Q1, median, mean, Q2, max of geographical coordinate columns
#' @details allows user to input any GloBI dataset.
#' @return prints summary statistics for geographic distribution
#' @export
#' @import dplyr
#' @examples
#' summaryGeo()
#'

summaryGeo <- function() {

  # uses curated sample
  GloBI_Curated_sample |>

    #extract observations with geographical data
    dplyr::filter(coordinated) |>

      #get geographical coordinate columns
      dplyr::select(x, y) |>

        #find min, Q1, median, mean, Q2, max of geographical coordinate columns
        apply(2, summary)
}
