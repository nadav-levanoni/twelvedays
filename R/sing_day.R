#' sings line of the current day and previous ones
#'
#' @param a date
#' @param dataset A data frame containing information about gifts
#'
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export


sing_day <- function(day, data){
  return(data[as.integer(day)])
}
