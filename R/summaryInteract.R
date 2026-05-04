#' Summary statistics for interactions
#'
#' @description Function that returns table of observations and species numbers per interaction type.
#' @details Works automatically on GloBI_Curated_sample data set.
#' @param input none
#' @returns Prints a tibble summarizing the number of each interaction type, and counts of bee and plant species involved in each type of interaction.
#' @export
#' @import dplyr
#' @examples
#'
#' summaryInteract()
#'

summaryInteract <- function() {

  #table of interactions and species
  interactions <- GloBI_Curated_sample |>

    #divide into groups based on interaction type
    group_by(interactionTypeName) |>

    #get summary for each interaction group
    summarise(Interactions = n(),
              BeeSpecies = n_distinct(bee_species),
              PlantSpecies = n_distinct(plant_species))

  interactions

}
