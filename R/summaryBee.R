#' Summary statistics for bees
#'
#' @description Function that returns summary of bee observations by species, genus, tribe, and family
#' @details Designed to work automatically on GloBI_Curated_sample data
#' @param input None
#' @return Prints number of unique bee species, genuses, tribes, and families. Also returns a table of the number of observations for each species.
#' @export
#' @examples
#' summaryBee()
#'

data <- GloBI_Curated_sample

summaryBee <- function() {
  #number of bees in each category
  n_species <- length(unique(data$bee_species))
  n_genus <- length(unique(data$bee_genus))
  n_tribe <- length(unique(data$bee_tribe))
  n_family <- length(unique(data$bee_family))

  #number of bees per species
  species <- data.frame(table(data$bee_species)) |> rename(speciesName = Var1)

  cat("There are ", n_species, " species of bees in this data. \n",
        "This includes ", n_genus, " genuses, ", n_tribe, " tribes, and ", n_family, " families. \n",
        "That's a lot of bees! \n")

  print("Here's the breakdown of bee species: ")
  print(species)

}
