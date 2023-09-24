

#' pythagorean
#' The second section is a longer description of the function.
#' This can go on for multiple lines.
#' @param x numeric vector
#' @export

pythagorean <- function(x,y) {

  squared_r =  x^2 + y^2

  r<- sqrt(squared_r)

  print(r)

}

pythagorean(3,4)


