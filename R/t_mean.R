#' t_mean
#'
#' This function will ...
#'
#' @param x a vector of numbers that we will use to take mean
#' @param s The lower trim bound
#' @param fl The first upper trim bound
#' @param sl The second upper trim bound
#'
#' @return Returns a trimmed mean
#' @author Leean Jo
#' @examples
#' t_mean(1:5)
#'
#'
#' @export
#'
#'

x = c(1,7,3,2,5,0.5,9,10)

t_mean <- function(x){

  s <- min(x)
  fl <- max(x)
  first_rm <- c(s, fl)

  first_r <- setdiff(x,first_rm)
  sl <- max(first_r)
  second_r <- setdiff(first_r,sl)

  result <- mean(second_r)

  removed <- c(s, fl, sl)
  minimum_n = length(removed) + 1

  arg_error <- function(minimum_n){
    if(stopifnot(length(second_r) < minimum_n)){
    message("Something bad happened.")
    }

  arg_error(x)
  print(t_mean(x))
     }
}
