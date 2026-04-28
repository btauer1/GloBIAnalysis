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

summaryInteract <- function(data = GloBI_Curated_sample) {

  #table of interactions and species
  interactions <- data |>
    group_by(interactionTypeName) |>
    summarise(n = n(),
              n_bee_species = n_distinct(bee_species),
              n_plant_species = n_distinct(plant_species))

  print(interactions)

}
