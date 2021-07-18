heapify <- function(array, n, i){
  parent <- i
  leftChild <- 2 * (i - 1) + 1
  rightChild <- 2 * (i - 1) + 2
  
  if ((leftChild < n) & (array[parent] < array[leftChild])){
    parent <- leftChild}
  
  if ((rightChild < n) & (array[parent] < array[rightChild])){
    parent <- rightChild}
  
  if (parent != i){
    array <- replace(array, c(i, parent), array[c(parent, i)])
    array <- heapify(array, n, parent)}
  return(array)}

heapSort <- function(array){
  n <- length(array)
  
  if (max(array) == array[n]){array<- replace(array, c(1, n), array[c(n, 1)])}
  
  for (i in floor(n / 2):1) {
    array <- heapify(array, n, i)}
  
  for (i in n:1){
    array <- replace(array, c(i, 1), array[c(1, i)])
    array <- heapify(array, i, 1)}
  return(array)
}

x <- c(5, 14, 3,45,43, 64, 70)
#  5 70  3 14 64
#  70 5  3 14 64
#  70 14 5 3  64
heapSort(x)

n <- length(x)
if (max(x) == x[n]){x<- replace(x, c(1, n), x[c(n, 1)])}
x
