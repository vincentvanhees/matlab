#
# FIX.R
#

test.fix <- function(input, expected) {
    identical(matlab::fix(input), expected);
}

X <- c(-1.9, -0.2, 3.4, 5.6, 7.0)
fix.expected <- c(-1, 0, 3, 5, 7)

test.fix(X, fix.expected);

