test_that("anovaPop", {
  expect_snapshot(cat(anovaPop("bee", 0.05)))
  expect_snapshot(cat(anovaPop("plant", 0.05)))
  expect_snapshot(cat(anovaPop("bee", 0.01)))
  expect_snapshot(cat(anovaPop("plant", 0.01)))
  expect_error(anovaPop(bee, 0.05))
  expect_error(anovaPop(plant, 0.05))
})

