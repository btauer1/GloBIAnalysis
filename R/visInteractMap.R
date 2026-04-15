#' Interactive map detailing locations of bee-plant interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import leaflet
#' @examples
#' Put function call as example.
#'

visInteractMap <- function() {
  library(leaflet)

  places <- GloBI_Curated_sample |>
    select(x, y)

  # create interactive map with points
  leaflet(places) |>
    addTiles() |>  # Adds OpenStreetMap background
    addMarkers(lng = ~x, lat = ~y)
}

# NOTES: Could add popups about information on the specific interactions in each place
