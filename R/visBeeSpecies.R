#' Distribution of Bee Species by Family
#'
#' @description This function generates a bar plot of bee species within the GloBI_Curated_sample dataset.
#' The user has the option to specify the bee family they wish to see the species of.
#'
#' @details This function is used to explore the types of bee species within the GloBI_Curated_sample dataset.
#' Users are able to view counts of each bee species and how they vary by bee family.
#' This function requires ggplot2.
#'
#' @param family A character string specifying which bee family the user wants to plot.
#' This parameter is optional and is not necessary to run the function.
#'
#' @return If no input is provided, this function returns a bar plot of bee species that is color-coded by its corresponding bee family.
#' If a bee family is specified, it generates a bar plot of bee species that belong to the specified family.
#'
#' @export
#' @import ggplot2
#'
#' @examples
#' visBeeSpecies()
#' visBeeSpecies("Apidae")

visBeeSpecies <- function(family = NULL) {

  # if no family argument provided, show general view of bee species & families
  if(is.null(family)) {
    GloBI_Curated_sample |>
      ggplot(aes(y = bee_species,
                 fill = bee_family)) +
      labs(title = "Distribution of Bee Species",
           y = "Bee Species",
           fill = "Bee Family") +
      geom_bar()
  }

  # else show view of specific family
  else {
    GloBI_Curated_sample |>
      filter(bee_family == family) |>
      ggplot(aes(y = bee_species)) +
      labs(title = "Distribution of Bee Species",
           y = "Bee Species") +
      geom_bar()
  }
}
