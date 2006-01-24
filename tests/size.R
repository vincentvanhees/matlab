###
### SIZE.R
###

test.size <- function(input, expected) {
   identical(as.integer(matlab::size(input)), expected)
}

X.mat <- matrix(1:6, 3, 2)
size.expected.X.mat <- dim(X.mat)

test.size(X.mat, size.expected.X.mat)

X.vec <- 2:9
size.expected.X.vec <- length(X.vec)

test.size(X.vec, size.expected.X.vec)

