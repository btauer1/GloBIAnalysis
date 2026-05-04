#' Interactive map detailing locations of bee-plant interactions
#'
#' @description Creates a leaflet map showing the locations of bee-plant interactions.
#' @details allows user to input any GloBI dataset for visualization. The leaflet style map allows for exploration of the bee-planet interaction observations.
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @param variable variable to color by, defaults to NULL
#' @param filter filter to apply to variable, defaults to NULL
#' @return a leaflet map of all or subset of GloBI dataset provided
#' @export
#' @import leaflet
#' @import dplyr
#' @examples
#' visInteractMap()
#' visInteractMap(variable = "bee_genus", filter = "Lasioglossum")
#'

visInteractMap <- function(data = GloBI_Curated_sample, variable = NULL, filter = NULL) {

  if (is.null(variable) & is.null(filter)) {
    places <- data |>
      filter(coordinated == TRUE) |>
      select(x, y)}
  if (xor(is.null(variable), is.null(filter))) {
    stop("you must provide both a variable and a filter or neither")}
  if (!is.null(variable) & !is.null(filter)) {
    if (typeof(variable) != "character"){stop("variable names must be inputted as strings/characters")}
    if (typeof(filter) != "character"){stop("filter names must be inputted as strings/characters")}
    if (!(variable %in% names(data))){stop("the provided variable name is not found in the data, reexamine the dataframe using summaryData(data = data)")}
    if (!(filter %in% (eval(parse(text = paste0("unique(GloBI_Curated_sample", "$", variable, ")")))))){stop("the provided filter name is not found in the provided variable, reexamine the variable in the dataframe using summaryData(data = data, variable = variable)")}
    places <- data |>
      filter(.data[[variable]] == filter & coordinated == TRUE) |>
      select(x, y)}

  lng1 <- min(places$x)
  lng2 <- max(places$x)
  lat1 <- min(places$y)
  lat2 <- max(places$y)

  # create interactive map with points
  leaflet(places) |>
    addTiles() |>  # Adds OpenStreetMap background
    fitBounds((lng1*1.1), (lat1*1.1), (lng2*1.1), (lat2*1.1)) |> #zooms area of interest
    addCircleMarkers(lng = ~x, lat = ~y, clusterOptions = markerClusterOptions())
}
