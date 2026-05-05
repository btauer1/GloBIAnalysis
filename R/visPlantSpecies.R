#' Distribution of Plant Species within each Family
#'
#' @description This function generates a bar plot of plant species within the plant family chosen by the user.
#' The data used belongs to the GloBI_Curated_sample dataset.
#'
#' @details This function is used to explore the types of plant species and families within the GloBI_Curated_sample dataset.
#' Users are able to view counts of each plant species within the chosen plant family.
#' This function requires ggplot2 and dplyr.
#'
#' @param family A character string specifying which plant family the user wants to plot.
#'
#' @return This function returns a bar plot of plant species that belong to the specified plant family.
#'
#' @export
#' @import dplyr
#' @import ggplot2
#'
#' @examples
#' visPlantSpecies("Convolvulaceae")
#'

visPlantSpecies <- function(family) {

  # error if user wants Asteraceae family
  if (family == "Asteraceae") {
    stop("Data is unfit for visualization: The Asteraceae family contains 295 unique species")
  }

  # separate data for specified family
  fam_data <- GloBI_Curated_sample |>
    dplyr::filter(plant_family == family)

  # make bar plot
  fam_data |>
    ggplot2::ggplot(ggplot2::aes(y = plant_species)) +
    ggplot2::labs(title = "Distribution of Plant Species",
         subtitle = paste(family, "family"),
         y = "Plant Species") +
    ggplot2::geom_bar()
}
