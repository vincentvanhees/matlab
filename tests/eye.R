###
### EYE.R
###

test.eye <- function(input, expected) {
    if (length(input) == 1) {
        identical(matlab::eye(input$m), expected)
    } else {
        identical(matlab::eye(input$m, input$n), expected)
    }
}

eye.expected.im <- matrix(c(1,0,0,
                            0,1,0,
                            0,0,1), 3, byrow = TRUE)

test.eye(list(m = 3), eye.expected.im)

