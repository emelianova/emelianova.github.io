fibonacci <- function(n) {
  res <- seq_len(n)
  res[2] <- 1
  for(i in seq(3,n)) res[i] <- res[i-1] + res[i-2]
  res
}

n <- 10
# ( sin(2*pi*f_k/n), cos(2*pi*f_k/n) )
plot(sin(2*pi*fibonacci(n^2)/n), cos(2*pi*fibonacci(n^2)/n),
     type="l")
