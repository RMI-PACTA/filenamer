first_three_words <- function(txt) {
  words <- unlist(strsplit(txt, split = " "))
  skip_words <- c("the", "a", 'an')
  words <- words[!tolower(words) %in% skip_words]
  paste(words[1:3], collapse = "_")
}
