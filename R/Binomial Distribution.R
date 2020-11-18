#' Binomial Distribution
#'
#' @param iter the iterations
#' @param n the size
#' @param p the probability
#'
#' @return Binomial Distribution
#' @export
#'
#' @examples
mybin100=function(iter=100,n=10,p=0.7){
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  succ=c()
  for( i in 1:iter){
    sam.mat[,i]=sample(c(1,0),n,replace=TRUE, prob=c(p,1-p))
    succ[i]=sum(sam.mat[,i])
  }
  succ.tab=table(factor(succ,levels=0:n))
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation 100 iterations", xlab="Number of successes")
  succ.tab/iter
}
