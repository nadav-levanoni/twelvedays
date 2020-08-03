#' Takes a number and returns its word
#'
#' @param num An integer
#'
#' @return A string of the input number
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export

num_to_word <- function(num){
  nums <-  c("and a", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve")
  return(nums[num])
}
