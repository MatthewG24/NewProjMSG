#' Confidence Interval
#'
#' @param x function
#'
#' @return confidence interval
#' @export
#'
#' @examples
#' myci(x=rnorm(30,10,5))
myci=function(x=rnorm(30,mean=20,sd=5)){
  t.test(x,conf.level=.95)$conf.int
}
