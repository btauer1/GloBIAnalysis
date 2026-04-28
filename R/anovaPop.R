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


#group is plant_endemic or bee_endemic
anovaPop <- function(data = GloBI_Curated_sample, group, level){

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
    var <- data$plant_endemic
  }
  else if (group == "bee"){
    var <- data$bee_endemic
  }

  #run ANVOA test
  anova_table <- summary(aov(var ~ interactionTypeName, data = data))

  #significance of ANVOA
  if (anova_table[[1]]$`Pr(>F)`[1] <= level){
    cat("This interaction IS statistically significant (p =", anova_table[[1]]$`Pr(>F)`[1], ", df =", anova_table[[1]]$Df[1], ").")
  } else {
    cat("This interaction IS NOT statistically significant (p =", anova_table[[1]]$`Pr(>F)`[1], ", df =", anova_table[[1]]$Df[1], ").")
  }
}

