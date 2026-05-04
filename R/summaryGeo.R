#' Summary statistics for geographical distributions
#'
#' @description Function that returns min, Q1, median, mean, Q2, max of geographical coordinate columns
#' @details allows user to input any GloBI dataset.
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @return prints summary statistics for geographic distribution
#' @export
#' @import dplyr
#' @examples
#' summaryGeo()
#'

#summaryGeo <- function(data = GloBI_Curated_sample) {

  # uses curated sample
  #data |>

    #extract observations with geographical data
    #filter(.data[["coordinated"]] == TRUE) |>

      #get geographical coordinate columns
      #select(.data[["x"]], .data[["y"]]) |>

        #find min, Q1, median, mean, Q2, max of geographical coordinate columns
        #apply(2, summary)
#}
