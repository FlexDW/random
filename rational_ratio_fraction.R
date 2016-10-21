'%:%' <- function(x, y){
  # returns the most reduced rational form of x:y or x/y
  source("https://raw.githubusercontent.com/FlexDW/random/master/gcd")
  GCD <- gcd(x, y)
  num <- x/GCD
  denom <- y/GCD
  print(paste(num, denom, sep="/"))
}

