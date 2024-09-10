test_that("matches lowercase vowels", {
  expect_equal(file_metric("a cat in the hat"), 5)
})

test_that("matches uppercase vowels", {
  expect_equal(file_metric("A cat in the hat"), 5)
})
