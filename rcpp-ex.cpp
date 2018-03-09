#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector fun_cpp(const NumericVector& x) {
  
  int n = x.length();
  NumericVector y(n); y[0] = 1;
  for (int i = 1; i < n; i++) {
    y[i] = pow(y[i - 1], 2) + x[i];
  }
  return y;
}

/*** R
fun_r <- function(x) {
  y <- numeric(length(x))
  for(i in seq_along(x)) {
    if (i > 1) {
      y[i] = y[i-1]^2 + x[i]
    } else {
      y[i] = 1
    }
  }
  y
}

fun_r(1:5)
fun_cpp(1:5)
*/
