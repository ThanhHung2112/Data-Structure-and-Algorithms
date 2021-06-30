# function to sort array using selection sort
selection_sort <- function(x)
{
  # length of array
  n <- length(x)
  for (i in 1 : (n - 1))
  {
    # assume element at i is minimum
    min_index <- i
    for (j in (i + 1) : (n))
    {
      # check if element at j is smaller
      # than element at min_index
      if (x[j] < x[min_index]) {
        # if yes, update min_index
        min_index = j
      }
    }
    # swap element at i with element at min_index
    temp <- x[i]
    x[i] <- x[min_index]
    x[min_index] <- temp
  }
  x
}

x <- c(23,43,2122,3132,12,21,12,12,4,43561) 
selection_sort(x)
