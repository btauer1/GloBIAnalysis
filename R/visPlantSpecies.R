#' Distribution of Plant Species in interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import ggplot2
#' @examples
#' Put function call as example.
#'

visPlantSpecies <- function() {
  library(ggplot2)

  # uses curated sample
  GloBI_Curated_sample |>

    # get bar chart of plant species
    ggplot(aes(y = plant_species)) +
    geom_bar()
}

# NOTES: Very messy, fix to make it readable
