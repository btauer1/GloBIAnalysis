#' summarizes variables and unique entries
#'
#' @description Summarizes variables and unique entries
#' @details No variables are needed. Data variable can be provided for GloBI data other than the curated sample. A variable name can be provided to get the unique entries of the variable.
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @param variable Variable to color by, defaults to NULL
#' @return Returns a list of variables in the GloBI df or if specified
#' @export
#' @examples
#' summaryData()
#' summaryData(variable = "bee_genus", print = TRUE)
#'

summaryData <- function(data = GloBI_Curated_sample, variable = NULL, print = FALSE) {
  variables <- names(data)

  if (is.null(variable)){
    print("the variables in the dataframe are :")
    print(paste(variables, collapse = ", "))
    } else {
    if (typeof(variable) != "character"){stop("variable names must be inputted as strings/characters")}
    if (!(variable %in% names(data))){stop("the provided variable name is not found in the data, reexamine the dataframe using summaryData(data = data)")}
    if (print == FALSE){
      (eval(parse(text = paste0("length(unique(GloBI_Curated_sample", "$", variable, "))"))))
      message("if you would like a print out of the unique vairables, use summaryData(data = data, variable = variable, print = TRUE)")
    } else {
      (eval(parse(text = paste0("unique(GloBI_Curated_sample", "$", variable, ")"))))
    }
   }
  }
