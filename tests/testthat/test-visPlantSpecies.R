test_that("visPlantSpecies works", {
  GloBI_Curated_sample <<- data.frame(
    plant_species = c("species1", "species2", "species3"),
    plant_family = c("family1", "family1", "family2")
  )
  expect_no_error(visPlantSpecies("family1"))
  expect_error(visPlantSpecies("Asteraceae"))
  expect_error(visPlantSpecies(Apiaceae))
  expect_error(visPlantSpecies())
})
