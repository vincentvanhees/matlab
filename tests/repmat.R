#
# REPMAT.R
#

test.repmat <- function(input, expected) {
    if (length(input) == 2) {
        identical(matlab::repmat(input$A, input$m), expected)
    } else {
        identical(matlab::repmat(input$A, input$m, input$n), expected)
    }
}

X.scalar <- 1
test.repmat(list(A = X.scalar, m = 3), matlab::ones(3))
test.repmat(list(A = X.scalar, m = c(4, 2)), matlab::ones(4, 2))
test.repmat(list(A = X.scalar, m = 4, n = 2), matlab::ones(4, 2))

X.mat <- matlab::eye(2)
repmat.expected <- matrix(c(rep(c(1,0),times=3), rep(c(0,1),times=3)),6,6)

test.repmat(list(A = X.mat, m = 3), repmat.expected)

