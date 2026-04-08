#' Types and counts of bee-plant interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import package Import package used to supplement function. (Add as many as needed)
#' @examples
#' Put function call as example.
#'

visInteractType <- function() {
  library(dplyr)

  # uses curated sample
  GloBI_Curated_sample |>

    # get interaction type column
    select(interactionTypeName) |>

    # form groups based on interaction type
    group_by(interactionTypeName) |>

    # get tibble with counts for each interaction type
    summarize(count = n())
}
