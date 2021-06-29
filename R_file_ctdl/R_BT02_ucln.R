uscln <- function(a,b){
  x <- a
  if (b == 0) {
    print(x)
  } else { uscln(b,(a%%b))
  }
} 
# Thu???t toán Euclic
uscln(100,50)


