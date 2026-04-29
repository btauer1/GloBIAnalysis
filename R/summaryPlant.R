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

summaryPlant <- function() {

  #pull out number of plants in each category
  n_species <- length(unique(GloBI_Curated_sample$plant_species))
  n_genus <- length(unique(GloBI_Curated_sample$plant_genus))
  n_family <- length(unique(GloBI_Curated_sample$plant_family))


  #make list of population summary
  plantPopSummary <- list(n_species, n_genus, n_family)
  names(plantPopSummary) <- c("Species", "Genera", "Families")
  print(plantPopSummary)


  #find the number of observations per species
  species <- data.frame(table(GloBI_Curated_sample$plant_species)) |> rename(speciesName = Var1)
  print(species)

}

