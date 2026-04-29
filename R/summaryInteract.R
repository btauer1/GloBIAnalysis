#' Summary statistics for interactions
#'
#' @description Function that returns table of observations and species numbers per interaction type.
#' @details allows user to input any GloBI dataset.
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @returns Prints a tibble summarizing the number of each interaction type, and counts of bee and plant species involved in each type of interaction.
#' @export
#' @import dplyr
#' @examples
#' summaryInteract()
#'

summaryInteract <- function() {

  #table of interactions and species
  interactions <- GloBI_Curated_sample |>

    #divide into groups based on interaction type
    group_by(interactionTypeName) |>

    #get summary for each interaction group
    summarise(nInteractions = n(),
              nBeeSpecies = n_distinct(bee_species),
              nPlantSpecies = n_distinct(plant_species))

  interactions

}
