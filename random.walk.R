w = 0; i = 0 # Initialize vector, counter

# Set walk length, walk steps (random seed variance)
wlen = as.integer(readline(prompt="How far should we walk? "))
wstep = as.integer(readline(prompt="How big should are steps be? "))

rwalk <- function(wlen) {
  while (i <= wlen) {
    w <- c(w, rnorm(wstep)) # Append random seed to vector
    i <- i + 1 # Increment counter
  }
  return(w)
}

p <- plot(rwalk(wlen), type='b')
