#
# CEIL.R
#

test.ceil <- function(input, expected) {
    identical(matlab::ceil(input), expected);
}

X <- c(-1.9, -0.2, 3.4, 5.6, 7)
ceil.expected <- c(-1, 0, 4, 6, 7)

test.ceil(X, ceil.expected);

