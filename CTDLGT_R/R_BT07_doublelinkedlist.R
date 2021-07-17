lst <- list(1, 2, 3, 4, 5)    # a list of 5 items
lst <- vector("list", 10000)  # 10000 NULLs
lst[[1]] <- 1
lst[[10000]] <- 10000  # lst now contains 1, NULL, ..., NULL, 10000
lst