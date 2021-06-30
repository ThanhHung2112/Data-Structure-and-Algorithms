valid_move <- function (x, y, board) {
  x >= 1 && y >= 1 && x <= 8 && y <= 8 && board[x, y] == -1
}

solve <- function (board, curr_x, curr_y, move_x, move_y, pos) {
  if (pos == 64) {
    return (board)
  }
  for (i in seq(1, 8)) {
    new_x = curr_x + move_x[i]
    new_y = curr_y + move_y[i]
    
    if (valid_move(new_x, new_y, board)) {
      board[new_x, new_y] = pos
      result <- solve(board, new_x, new_y, move_x, move_y, (pos + 1))
      if (!is.null(result)) {
        return (result)
      }
      board[new_x, new_y] = -1
    }
  }
  # Return NULL
  # As this is the last result of the function, you don't need to write return (NULL)
  NULL
}
final_board <- solve(
  board = matrix(
    c(0, rep_len(-1, 63)),
    nrow = 8, ncol = 8,
    byrow = TRUE
    ),
  curr_x = 1,
  curr_y = 1,
  move_x = c(2, 1,-1,-2,-2,-1, 1, 2),
  move_y = c(1, 2, 2, 1,-1,-2,-2,-1),
  pos = 1
)
final_board 
  