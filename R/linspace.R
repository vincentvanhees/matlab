###
### LINSPACE.R - Generate linearly spaced vectors
###


##-----------------------------------------------------------------------------
linspace <- function(a, b, n = 100) {
    if (n < 2) {
        b
    } else {
        seq(a, b, length = n)
    }
}


