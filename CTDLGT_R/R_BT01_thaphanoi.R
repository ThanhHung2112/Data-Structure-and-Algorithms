thaphanoi <- function(n, toa1,toa2,toa3){
  if (n == 1) {
     cat('chuy???n t???',toa1,'sang',toa3, '\n')
  } else {
      thaphanoi(n-1,toa1,toa3,toa2)
      cat('chuy???n t???',toa1,'sang',toa3, '\n')
      thaphanoi(n-1,toa2,toa1,toa3)}
  }
thaphanoi(3,'tòa1','tòa2','tòa3')
  

