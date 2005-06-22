#
# ONES.R
#

test.ones <- function(input, expected) {
    if (length(input) == 2) {
        identical(matlab::ones(input$n, input$m), expected)
    } else {
        identical(matlab::ones(input$n), expected)
    }
}

ones.expected.3x3 <- matrix(1, nrow = 3, ncol = 3)
ones.expected.4x2 <- matrix(1, nrow = 4, ncol = 2)

test.ones(list(n = 3), ones.expected.3x3)
test.ones(list(n = 4, m = 2), ones.expected.4x2)

