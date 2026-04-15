#' ANOVA analysis of bee and plant population dynamics
#'
#' @description Function that returns [INSERT SUMMARY STATISTICS]
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export
#' @import dplyr
#' @examples
#' Put function call as example.
#'

data <- GloBI_Curated_sample

#group is plant_endemic or bee_endemic
anovaPop <- function(group){

  #choose endemic type
  if (group == "plant"){
    var = plant_endemic
  }
  else if (group == "bee"){
    var = bee_endemic
  }
  else {
    stop("Valid arguments are \"plant\" or \"bee\".")
  }

  #run ANVOA test
  anova <- summary(aov(var ~ interactionTypeName, data = data))

  #significance of ANVOA
  if
}

