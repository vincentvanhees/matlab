###
### LOGSPACE.R
###

test.logspace <- function(input, expected) {
    if (length(input) == 2) {
        identical(all.equal(matlab::logspace(input$a, input$b),
                            expected,
                            tolerance = 0.0001),
                  TRUE)
    } else {
        identical(all.equal(matlab::logspace(input$a, input$b, input$n),
                            expected,
                            tolerance = 0.0001),
                  TRUE)
    }
}

logspace.expected.1topi <- c(10.0000, 7.4866, 5.6050, 4.1963, 3.1416)

test.logspace(list(a = 1, b = pi, n = 5), logspace.expected.1topi)

