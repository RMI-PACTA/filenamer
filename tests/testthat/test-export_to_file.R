test_that("does what it should", {
  tmp_dir <- withr::local_tempdir()

  file_name <-
    withr::with_dir(tmp_dir, code = {
      export_to_file("A cat in the hat")
      list.files(tmp_dir)
    })

  expect_equal(file_name, "cat_in_hat_5_5.txt")
})
