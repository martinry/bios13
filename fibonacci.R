### Fibonacci sequence
# take input from the user
nterms = as.integer(readline(prompt="How many terms? "))

# first two terms
n1 = 0; n2 = 1; i = 0;

# check if the number of terms is valid
fibonacci <- function(nterms) {
  s <- c(0, 1) # Initialize first two digits
  if (nterms > 2) {
    while (i <= nterms-3) {
      tmp1 <- n1
      n1 <- n2
      n2 <- tmp1 + n2
      s <- c(s, n2)
      
      i <- i + 1
    }
  }
  return(s)
}

fib = fibonacci(nterms)

n <- length(fib)

x1<- ifelse(seq(1:n)%%2 ==1, fib, 0)
y1<- ifelse(seq(1:n)%%2 ==0, fib, 0)

x2 <-ifelse(seq(1:n)%%4==1, x1,-x1)
y2 <-ifelse(seq(1:n)%%4==2, y1,-y1)

x <- ifelse(x2 >0, log(x2), ifelse(x2<0, -log(-x2),0))
y <- ifelse(y2 >0, log(y2), ifelse(y2<0, -log(-y2),0))

plot(x,y)
lines(x,y, col="red")
