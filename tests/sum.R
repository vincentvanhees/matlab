#
# SUM.R
#

test.sum <- function(input, expected) {
    identical(all.equal(matlab::sum(input, FALSE),
                        expected,
                        tolerance = 0.0001),
              TRUE)
}

X.vec <- 1:9
sum.expected.vec <- 45

cat("vector test\n")
test.sum(X.vec, sum.expected.vec)

X.mat <- matrix(X.vec, 3, 3, byrow = TRUE)
sum.expected.mat.by.col <- c(12, 15, 18)
sum.expected.mat.by.row <- c(6, 15, 24)

cat("matrix test\n")
test.sum(X.mat, sum.expected.mat.by.col)
test.sum(t(X.mat), sum.expected.mat.by.row)

