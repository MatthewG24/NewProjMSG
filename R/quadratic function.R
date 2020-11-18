#' quadratic function
#'
#' @param x the diameter
#'
#' @return The estimated height
#' @export
#'
#' @examples
#' myplot(2.303031)
myplot=function(x){
  quad.lm$coef[1]+quad.lm$coef[2]*x+quad.lm$coef[3]*x^2
  }
