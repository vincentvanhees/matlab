#
# ZEROS.R
#

test.zeros <- function(input, expected) {
    if (length(input) == 2) {
        identical(matlab::zeros(input[1], input[2]), expected);
    } else {
        identical(matlab::zeros(input), expected);
    }
}

zeros.expected.3x3 <- matrix(0, nrow = 3, ncol = 3)
zeros.expected.4x2 <- matrix(0, nrow = 4, ncol = 2)

test.zeros(3, zeros.expected.3x3);
test.zeros(c(4, 2), zeros.expected.4x2);

