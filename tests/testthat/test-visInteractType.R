test_that("visInteractType", {
  GloBI_Curated_sample <<- data.frame(
    interactionTypeName = c("a", "b", "a")
  )
  expect_no_error(visInteractType())
})

# error: could not find function "visInteractType"
