#
# ZEROS.R
#

test.zeros <- function(input, expected) {
    if (length(input) == 2) {
        identical(matlab::zeros(input$n, input$m), expected)
    } else {
        identical(matlab::zeros(input$n), expected)
    }
}

zeros.expected.3x3 <- matrix(0, nrow = 3, ncol = 3)
zeros.expected.4x2 <- matrix(0, nrow = 4, ncol = 2)

test.zeros(list(n = 3), zeros.expected.3x3)
test.zeros(list(n = 4, m = 2), zeros.expected.4x2)

