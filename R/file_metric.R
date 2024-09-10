file_metric <- function(txt) {
  nchar(gsub("[^aeiouy]", "", txt))
}
