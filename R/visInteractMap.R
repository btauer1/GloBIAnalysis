#' Interactive map detailing locations of bee-plant interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param data GloBI data, defaults to GloBI_Curated_sample
#' @param by variable to color by, defaults to NULL
#' @param filter filter to apply to variable, defaults to NULL
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import leaflet
#' @examples
#' Put function call as example.
#'

visInteractMap <- function(data = GloBI_Curated_sample, by = NULL, filter = NULL) {
  library(leaflet)

  if (is.null(by) & is.null(filter)) {
    places <- data |>
      filter(coordinated == TRUE) |>
      select(x, y)
    by_tf <- FALSE}
  if (is.null(by) & !is.null(filter)) {
    warnings("filter can only be applied with a supplied by variable")
    places <- data |>
      filter(coordinated == TRUE) |>
      select(x, y)
    by_tf <- FALSE}
  if (!is.null(by) & is.null(filter)) {
    (places <- data |>
       filter(coordinated == TRUE) |>
       select(x, y))
    by_tf <- TRUE}
  if (!is.null(by) & !is.null(filter)) {
    places <- data |>
      filter(coordinated == TRUE & data$by == filter) |>
      select(x, y)
    by_tf <- FALSE}

  lng1 <- min(places$x)
  lng2 <- max(places$x)
  lat1 <- min(places$y)
  lat2 <- max(places$y)

  # create interactive map with points
  if (by_tf == FALSE){
  leaflet(places) |>
    addTiles() |>  # Adds OpenStreetMap background
    fitBounds((lng1*1.1), (lat1*1.1), (lng2*1.1), (lat2*1.1)) |> #zooms area of interest
    addcircleMarkers(lng = ~x, lat = ~y)}

  if (by_tf == TRUE){
    RdYlBu <- colorFactor("RdYlBu", domain = data$by)
    leaflet(places) |>
      addTiles() |>  # Adds OpenStreetMap background
      fitBounds((lng1*1.1), (lat1*1.1), (lng2*1.1), (lat2*1.1)) |> #zooms area of interest
      addcircleMarkers(lng = ~x, lat = ~y, color = ~RdYlBu(data$by))}
}
