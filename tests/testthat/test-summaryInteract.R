test_that("summaryInteract", {
  expect_snapshot(summaryInteract())
  expect_error(summaryInteract(x))
})
