getRegCvSets <- function(y, nsets=5, seed=NULL, print=TRUE){
# Returns cross validation set foldid.

  if(!is.null(seed)){
    set.seed(seed)
  }
  
  # created vector to order case and controls
  index <- 1:length(y)
  index <- index[order(y)]
  
  # generate foldids
  cvSet <- rep(1:nsets, length=length(y))

  # reorder according to original vector
  cvSet <- cvSet[order(index)]
  
  # print allocation per fold
  if(print){
    print(tapply(y, INDEX=cvSet, median))
    print(tapply(y, INDEX=cvSet, mean))
  }
  
  return(cvSet)
}

