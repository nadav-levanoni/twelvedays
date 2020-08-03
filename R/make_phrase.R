#' Takes a noun and makes it plural
#'
#' @param num An integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


make_phrase <- function(num, item, verb, adjective, location){

  num <-  num_to_word(as.integer(num))

  phrase <-  paste(num, item, verb, adjective, location)

  phrase <-  str_trim(str_replace_all(phrase, " +", " "))

  phrase <-  str_trim(str_replace_all(phrase, "\\-", " "))

  phrase <-  tools::toTitleCase(phrase)

  return(phrase)
}


