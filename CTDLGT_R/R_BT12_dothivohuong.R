#install.packages("igraph")
library(igraph)

a = make_graph(c(1, 2, 2, 3, 3, 4, 5, 6, 4,1, 2,4, 4,5, 6,1), directed = FALSE)
plot(a)
