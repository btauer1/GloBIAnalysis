test_that("visPlantSpecies works", {
  expect_error(visPlantSpecies("Asteraceae"))
  expect_error(visPlantSpecies("meow"))
  expect_error(visPlantSpecies(Apiaceae))
  expect_error(visPlantSpecies())
})
