#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){

  # set first item aside because its singular
  modified = rep(0, 12)
  modified[1] = 1

  # modify special exception 6
  excep_6 = str_detect(gift, "oose$")
  gift = gift %>%
    str_replace("oose$", "eese")
  modified = modified + excep_6

  # modify exception 9
  excep_9 = str_detect(gift, "y$")
  gift = gift %>%
    str_replace("y$", "ies")
  modified = modified + excep_9

  # everything else
  gift[!modified] <- str_replace(paste(gift[!modified], "s"), " ", "")

  return(gift)

}
