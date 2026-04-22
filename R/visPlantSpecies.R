#' Distribution of Plant Species in interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import ggplot2
#' @examples
#' visPlantSpecies()
#'

visPlantSpecies <- function() {

  GloBI_Curated_sample |>
    ggplot(aes(y = plant_species,
               fill = plant_family)) +
    labs(title = "Distribution of Plant Species",
         y = "Plant Species",
         fill = "Plant Family") +
    geom_bar()
}

# WORK IN PROGRESS, VERY MESSY
