test_that("visPlantSpecies works", {

  # error for Asteraceae
  expect_error(
    visPlantSpecies("Asteraceae"),
    "Data is unfit for visualization"
  )
})
