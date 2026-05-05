test_that("visBeeSpecies works", {
  GloBI_Curated_sample <<- data.frame(
    bee_species = c("species1", "species2", "species3"),
    bee_family = c("family1", "family1", "family2")
  )
  expect_no_error(visBeeSpecies("family1"))
  expect_no_error(visBeeSpecies())
  expect_error(visBeeSpecies(Apidae))
})
