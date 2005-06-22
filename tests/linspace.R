#
# LINSPACE.R
#

test.linspace <- function(input, expected) {
    if (length(input) == 2) {
        identical(matlab::linspace(input$a, input$b), expected)
    } else {
        identical(matlab::linspace(input$a, input$b, input$n), expected)
    }
}

linspace.expected.100 <- as.numeric(1:100)
linspace.expected.25by5 <- c(0, 6.25, 12.50, 18.75, 25)
linspace.expected.len1 <- 25

test.linspace(list(a = 1, b = 100), linspace.expected.100)
test.linspace(list(a = 0, b = 25, n = 5), linspace.expected.25by5)
test.linspace(list(a = 1, b = 25, n = 1), linspace.expected.len1)

