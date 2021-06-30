n = 8

issafe <- function(x,y,board){
  if (is.na((x >= 0) && (y >= 0) && (x<n) && (y<n) && (board[x,y] == -1))){
    return(TRUE)} 
  return(FALSE)}

solution <- function(n,board){
  for (i in 1:n){
    for (j in 1:n){
      cat(board[i,j], end=' ')}
    }}

solveKTUtil <- function(n, board, curr_x, curr_y,
                        move_x, move_y, pos){
  #n, board,0,0,move_x, move_y, pos
  
  if (pos == n**2){
    return(TRUE)} 
  for (i in 1:8){
    new_x <- curr_x + move_x[i]
    new_y <- curr_y + move_y[i]
    if (issafe(new_x, new_y, board)){
      board[new_x,new_y] = pos
      if (solveKTUtil(n, board,new_x, new_y,
                        move_x, move_y, pos+1)){
        return(TRUE)}
      # Backtracking
      board[new_x,new_y] = -1
    }} 
  return(FALSE)}

solveKT <- function(n){
  
  rnames <- c('A','B','C','D','E','F','G','H')
  cnames <- c(1,2,3,4,5,6,7,8)
  board <- matrix(-1, nrow = 8, ncol = 8, byrow = TRUE,
                  dimnames = list(rnames,cnames))
  
  move_x <- c(2, 1, -1, -2, -2, -1, 1, 2)
  move_y <- c(1, 2, 2, 1, -1, -2, -2, -1)
  
  #star
  board[4,1] = 0
  
  #step counter
  pos = 1
  
  #Checking if solution exists or not
  if (!(solveKTUtil(n, board,0,0,move_x, move_y, pos))){
    print('solution dose not exists')
  } else {
    solution(n,board)}}
  
solveKT(n)




