#' Power analysis for TOST for one-sample t-test
#' @param alpha alpha used for the test (e.g., 0.05)
#' @param statistical_power desired power (e.g., 0.8)
#' @param low_eqbound_d lower equivalence bounds (e.g., -0.5) expressed in standardized mean difference (Cohen's d)
#' @param high_eqbound_d upper equivalence bounds (e.g., 0.5) expressed in standardized mean difference (Cohen's d)
#' @param epsilon By default, true effect is assumed to be 0. If you want to perform an equivalence test when expecting a non-zero effect, specify the expected standardized effect size in Cohen's d as epsilon (e.g., 0.05)
#' @return Returns a string summarizing the power analysis, and a numeric variable for the number of observations needed in each group
#' @examples 
#' powerTOSTone(alpha=0.05, statistical_power=0.9, low_eqbound_d=-0.3, high_eqbound_d=0.3, epsilon=0.1)
#' @export

powerTOSTone<-function(alpha, statistical_power, low_eqbound_d, high_eqbound_d, epsilon){
  if(missing(epsilon)) {
    epsilon<-0
  }
  NT1<-(qnorm(1-alpha)+qnorm(1-((1-statistical_power)/2)))^2/(low_eqbound_d-epsilon)^2
  NT2<-(qnorm(1-alpha)+qnorm(1-((1-statistical_power)/2)))^2/(high_eqbound_d-epsilon)^2
  N<-ceiling(max(NT1,NT2))
  message(cat("The required sample size to achieve",100*statistical_power,"% power with equivalence bounds of",low_eqbound_d,"and",high_eqbound_d,"is",N))
  return(N)
}