###
### STD.R
###

test.std <- function(input, expected) {
    identical(all.equal(matlab::std(input),
                        expected,
                        tolerance = 0.0001),
              TRUE)
}

X.mat <- matrix(c(1, 5, 9, 7, 15, 22), 2, 3, byrow = TRUE)
std.expected.by.col <- c(4.2426, 7.0711, 9.1924)
std.expected.by.row <- c(4.000, 7.5056)

test.std(X.mat, std.expected.by.col)
test.std(t(X.mat), std.expected.by.row)

