test_that("summaryBee", {
  expect_snapshot(summaryBee())
  expect_error(summaryBee(x))
})

