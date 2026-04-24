#' Distribution of Plant Species within each Family
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

visPlantSpecies <- function(family) {

  # error if user wants Asteraceae family
  if (family == "Asteraceae") {
    stop("Data is unfit for visualization: The Asteraceae family contains 295 unique species")
  }

  # separate data for specified family
  fam_data <- GloBI_Curated_sample |>
    filter(plant_family == family)

  # make bar plot
  fam_data |>
    ggplot(aes(y = plant_species)) +
    labs(title = "Distribution of Plant Species",
         subtitle = paste(family, "family"),
         y = "Plant Species") +
    geom_bar()
}
