#' Summary statistics for plants
#'
#' @description Function that returns summary of plant species in the GloBI curated data.
#' @details Designed to work automatically on GloBI_Curated_sample data
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @return Prints number of unique plant species, genuses and families. Also returns a table of the number of observations for each species.
#' @export
#' @examples
#' summaryPlant()
#'

summaryPlant <- function(data = GloBI_Curated_sample) {

  #number of plants in each category
  n_species <- length(unique(data$plant_genus))
  n_genus <- length(unique(data$plant_genus))
  n_family <- length(unique(data$plant_family))

  #number of plants per species
  species <- data.frame(table(data$plant_species)) |> rename(speciesName = Var1)

  cat("There are ", n_species, " species of plants in this data. \n",
      "This includes ", n_genus, " genuses, and ", n_family, " families. \n",
      "That's a lot of plants! \n")

  print("Here's the breakdown of plant species: ")
  print(species)
}
