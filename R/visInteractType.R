#' Types and counts of bee-plant interactions
#'
#' @description This function generates a bar plot of bee-plant interaction types within the GloBI_Curated_sample dataset.
#'
#' @details This function allows a user to explore the distribution of bee-plant interaction types.
#' Users are able to view how bees and plants most commonly interact.
#' This function requires no input.
#'
#' @return This function returns a bar plot of the types of bee-plant interactions.
#'
#' @export
#'
#' @examples
#' visInteractType()
#'

visInteractType <- function() {

  # get counts of interaction types from curated sample and sort
  counts <- sort(table(GloBI_Curated_sample$interactionTypeName), decreasing = FALSE)

  # make bar plot
  barplot(counts,
          horiz = TRUE, # put interaction types on y-axis
          las = 1, # make text horizontal
          main = "Distribution of Bee-Plant Interaction Types",
          xlab = "Number of Interactions",
          ylab = "Interaction Type")
}
