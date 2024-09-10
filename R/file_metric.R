file_metric <- function(txt) {
  nchar(gsub("[^AEIOUY]", "", txt, ignore.case = FALSE))
}
