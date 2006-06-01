###
### LINSPACE.R
###


##-----------------------------------------------------------------------------
test.linspace <- function(input, expected) {
    output <- do.call(getFromNamespace("linspace", "matlab"), input)
    identical(output, expected)
}

linspace.expected.100 <- as.numeric(1:100)
linspace.expected.25x5 <- c(0, 6.25, 12.50, 18.75, 25)
linspace.expected.len1 <- 25

test.linspace(list(a = 1, b = 100), linspace.expected.100)
test.linspace(list(a = 0, b = 25, n = 5), linspace.expected.25x5)
test.linspace(list(a = 1, b = 25, n = 1), linspace.expected.len1)

