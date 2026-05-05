test_that("visInteractType works", {
  GloBI_Curated_sample <<- data.frame(
    interactionTypeName = c("a", "b", "a"))
  expect_no_error(visInteractType())
})
