#' ANOVA analysis of bee and plant population dynamics
#'
#' @description Function that returns if the relationship between interaction type and bee/plant endemicity is significant.
#' @details Runs two-way ANVOA test with endemicity as the independent variable and interaction type as the dependent variable.
#' @param group bee or plant, which type of endemicity is being tested
#' @param level significance level of ANOVA regression
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @return Prints message saying if ANOVA is significant or not.
#' @export
#' @import stats
#' @examples
#' anovaPop("bee", 0.05)
#' anovaPop("plant", 0.1)
#'

anovaPop <- function(group, level){

  #check group is valid
  group <- as.character(group)
  if (!group %in% c("plant", "bee")){
    stop("Invalid group argument. Valid groups are \"plant\" or \"bee\".")
  }

  #check level is valid
  if (is.double(level) != T){
    stop("Invalid argument. Level must be a numeric value.")
  } else if (level < 0 | level > 1) {
    warning("Level should be between 0 and 1. Common levels are 0.1, 0.05, 0.01, 0.001.")
  }

  #choose endemic type
  if (group == "plant"){
    var <- GloBI_Curated_sample$plant_endemic
  }
  else if (group == "bee"){
    var <- GloBI_Curated_sample$bee_endemic
  }

  #run ANVOA test
  anova_table <- summary(aov(var ~ interactionTypeName, data = GloBI_Curated_sample))

  #extract p-value rounded to 2 decimals
  p <- signif(anova_table[[1]]$`Pr(>F)`[1], 3)

  #extract degrees of freedom
  df <- anova_table[[1]]$Df[1]

  #interpret ANVOA for user
  if (p <= level){
    message("The relationship between ", group, " endemicity and interaction type IS statistically significant (p = ", p, ", df = ", df, ").")
  } else {
    message("The relationship between ", group, " endemicity and interaction type IS NOT statistically significant (p = ", p, ", df = ", df, ").")
  }
}

