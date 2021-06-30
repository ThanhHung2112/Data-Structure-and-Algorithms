lst <- list() # creates an empty (length zero) list
lst[[1]] <- 1 # automagically extends the lst
lst[[2]] <- 2 # ditto

lst <- list(1, 2, 3, 4, 5)    # a list of 5 items

lst <- vector("list", 10000)  # 10000 NULLs
lst[[1]] <- 1
lst[[10000]] <- 10000  # lst now contains 1, NULL, ..., NULL, 10000

lst <- list(1, 2, 3, 4, 5)
lst <- lst[-2]  # now contains 1, 3, 4, 5

tree <- list(list(1, 2), list(3, list(4, 5)))

# left child: list(1, 2)
tree[[1]]

# right child
tree[[2]]

# right child of right child:list(4, 5)
tree[[2]][[2]]
