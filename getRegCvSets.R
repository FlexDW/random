getRegCvSets <- function(y, nsets=5, seed=NULL){
# Returns cross validation set foldid.

  if(!is.null(seed)){
    set.seed(seed)
  }
  
  # generate foldids
  cvSet <- rep(1:nsets, length=length(y))
  cvSet <- sample(cvSet)

  return(cvSet)
}

