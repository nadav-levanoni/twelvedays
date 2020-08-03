#' sings the song for a given day
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day + the header.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_line <- function(dataset, line, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})

  day <-  dataset[as.integer(line), ]$Day.in.Words

  head <-  paste("On the", day, "day of Christmas, my true love sent to me,")

  body <- map_chr(as.integer(line):1, ~sing_day(.x, phrases))

  body <- c(body, ".")

  song <- str_c(c(head, body), collapse = ",\n")

  song <- str_replace(song, ",\n\\.", ".")
  song <- str_replace(song, ",,", ",")

  return(song)

}
