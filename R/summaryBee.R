#' Summary statistics for bees
#'
#' @description Function that returns summary of bee observations by species, genus, tribe, and family
#' @details allows user to input any GloBI dataset.
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @return Prints number of unique bee species, genuses, tribes, and families. Also returns a table of the number of observations for each species.
#' @export
#' @examples
#' summaryBee()
#'

summaryBee <- function() {

  #pull out number of bees in each category
  n_species <- length(unique(GloBI_Curated_sample$bee_species))
  n_genus <- length(unique(GloBI_Curated_sample$bee_genus))
  n_tribe <- length(unique(GloBI_Curated_sample$bee_tribe))
  n_family <- length(unique(GloBI_Curated_sample$bee_family))

  #make list of population summary
  beePopSummary <- list(n_species, n_genus, n_tribe, n_family)
  names(beePopSummary) <- c("Species", "Genera", "Tribes", "Families")
  print(beePopSummary)

  #find the number of observations per species
  species <- data.frame(table(GloBI_Curated_sample$bee_species)) |> rename(speciesName = Var1)
  print(species)

}
