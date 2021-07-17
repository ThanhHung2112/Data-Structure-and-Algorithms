#rstats #8queens #222characters #codegolf #tidyverse
#install.packages("tidyverse")
library(tidyverse)

f=function(q){L=length(q)
if(L==8) { return(q)}
flatten( map( setdiff (1:8,c(q,c(q+L:1,q-L:1))),~f(c(q,.x))))
}

s=data.frame(c=unlist(f(c())),r=1:8,x=rep(1:92,e=8))
ggplot(s)+geom_tile(aes(r,c))+facet_wrap(~x)

#-----------------------------------------------------------------------------
#' Try and place a queen given the queens we have on the board so far
#'
#' @param queens column placement of queens so far. The index within this list
#'               is the row, and the value is the column.
#' 
#-----------------------------------------------------------------------------
place_queen <- function(queens) {
  # If there are 8 queens placed, then this must be a solution.
  if (length(queens) == 8) {
    cat("Solution: ", paste(queens, collapse=", "), "\n")
    return()
  }
  
  # Need to figure out where I can place a queen in the next row.
  # Drop all columns that have already been taken - since we 
  # can't place a queen below an existing queen
  possible_placements <- setdiff(1:8, queens)
  
  # For each queen already on the board, find the diagonal 
  # positions that it can see in this row.
  diag_offsets <- seq(length(queens), 1)
  diags <- c(queens + diag_offsets, queens - diag_offsets)
  diags <- diags[diags > 0 & diags < 9]
  
  # Drop these diagonal columns from possible placements
  possible_placements <- setdiff(possible_placements, diags)
  
  # For each possible placement, try and place a queen
  walk(possible_placements, ~place_queen(c(queens, .x)))
}

# Start with no queens placed
place_queen(c())

