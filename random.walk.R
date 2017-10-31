w = 0; i = 0 # Initialize vector, counter

# Set walk length, walk steps (random seed variance)
wlen = as.integer(readline(prompt="How far should we walk? "))
wstep = as.integer(readline(prompt="How big should are steps be? "))

rwalk <- function(wlen) {
  current_step = 0
  while (i <= wlen) {
    current_step <- current_step + rnorm(wstep) # Add random seed to current step
    w <- c(w, current_step) # Append current step to vector
    i <- i + 1 # Increment counter
  }
  return(w)
}

p <- plot(rwalk(wlen), type='b', col="red")

