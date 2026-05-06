test_that("summaryPlant", {
  expect_snapshot(summaryPlant())
  expect_error(summaryPlant(x))
})
