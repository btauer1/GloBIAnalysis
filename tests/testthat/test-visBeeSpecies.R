test_that("visBeeSpecies works", {
  expect_no_error(visBeeSpecies())
  expect_error(visBeeSpecies(Apidae))
  expect_error(visBeeSpecies("meow"))
})
