test_that("visInteractMap", {
  expect_snapshot(visInteractMap())
  expect_snapshot(visInteractMap(variable = "bee_genus", filter = "Lasioglossum"))
  expect_error(visInteractMap(variable = "bee_genus"))
  expect_error(visInteractMap(variable = "bee_genus", filter = 7))
  })

#interesting error happening visInteractMap is in namespace, unclear why testthat cannot find it
