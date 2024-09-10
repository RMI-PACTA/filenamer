word_count <- function(txt) {
  length(attributes(gregexpr("(\\w|\\w\\-\\w|\\w\\'\\w)+", txt)[[1]])$match.length)
}
