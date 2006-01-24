###
### MOD.R
###

test.mod <- function(input, expected) {
    identical(matlab::mod(input$x, input$y), expected)
}

mod.expected.scalar <- 3
mod.expected.vec <- c(1, 2, 0, 1, 2)

test.mod(list(x = 13, y = 5), mod.expected.scalar)
test.mod(list(x = 1:5, y = 3), mod.expected.vec)


# rem & mod give same results with X, Y having same sign
test.mod(list(x = 5, y = 3), matlab::rem(5, 3))
test.mod(list(x = -5, y = -3), matlab::rem(-5, -3))

# alternate formula used when X, Y having different signs
test.mod(list(x = 5, y = -3), (matlab::rem(5, -3) - -3))
test.mod(list(x = -5, y = 3), (matlab::rem(-5, 3) - 3))

