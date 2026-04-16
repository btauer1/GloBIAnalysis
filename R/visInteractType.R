#' Types and counts of bee-plant interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export
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

# NOTES: Count labels are overlapping with the bar
