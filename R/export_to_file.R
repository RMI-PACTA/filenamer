#' Export text to a file with a specialized file name
#'
#' @param txt A string
#' @param n A number indicating the number of words to use for the file name
#'
#' @return returns TRUE invisibly if it suceeds without error
#'
#' @export

export_to_file <- function(txt, n = 3) {
  if (n > 3) {
    title <- first_four_words(txt)
  } else {
    title <- first_three_words(txt)
  }
  count <- word_count(txt)
  metric <- file_metric(txt)

  filename <- paste0(paste(title, count, metric, sep = "_"), ".txt")

  writeChar(txt, filename)
  invisible(TRUE)
}
