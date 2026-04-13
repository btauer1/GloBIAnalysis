#' Summary statistics for bees
#'
#' @description Function that returns summary of bee observations by species, genus, tribe, and family
#' @details none
#' @param Inputs: none, works automatically on GloBI_Curated_sample data
#' @return Prints number of unique bee species, genuses, tribes, and families. Also returns a table of the number of observations for each species.
#' @export
#' @import package Import package used to supplement function. (Add as many as needed)
#' @examples
#' summaryBee()
#'

data <- GloBI_Curated_sample

summaryBee <- function() {
  #number of bees in each category
  n_species <- length(unique(data$bee_genus))
  n_genus <- length(unique(data$bee_genus))
  n_tribe <- length(unique(data$bee_tribe))
  n_family <- length(unique(data$bee_family))

  #number of bees per species
  species <- table(data$bee_species)

  cat("There are ", n_species, " species of bees in this data. \n",
        "This includes ", n_genus, " genuses, ", n_tribe, " tribes, and ", n_family, " families. \n",
        "That's a lot of bees!")

  print("Here's the breakdown of bee species: ")
  species

}
