#' Interactive map detailing locations of bee-plant interactions
#'
#' @description Add brief description to function(s)
#' @details Specifics about functionality, inputs, etc.
#' @param input Brief description of input. (Add as many params as needed)
#' @return Brief description of what function returns/prints.
#' @export Added here to export function to user (text not needed here)
#' @import leaflet
#' @examples
#' visInteractMap()
#'

visInteractMap <- function() {

  places <- GloBI_Curated_sample |>
    select(x, y)

  lng1 <- min(places$x)
  lng2 <- max(places$x)
  lat1 <- min(places$y)
  lat2 <- max(places$y)

  # create interactive map with points
  leaflet(places) |>
    addTiles() |>  # Adds OpenStreetMap background
    fitBounds((lng1*1.1), (lat1*1.1), (lng2*1.1), (lat2*1.1)) |> #zooms area of interest
    addMarkers(lng = ~x, lat = ~y)
}

# NOTES: Could add popups about information on the specific interactions in each place
