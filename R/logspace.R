###
### LOGSPACE.R - Generate logarithmically spaced vectors
###


##-----------------------------------------------------------------------------
logspace <- function(a, b, n = 50) {
    if (!is.numeric(a)) {
        stop(sprintf("argument %s must be numeric", sQuote("a")))
    } else if (!(length(a) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("a")))
    }

    if (!is.numeric(b)) {
        stop(sprintf("argument %s must be numeric", sQuote("b")))
    } else if (!(length(b) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("b")))
    }

    if (!is.numeric(n)) {
        stop(sprintf("argument %s must be numeric", sQuote("n")))
    } else if (!(length(n) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("n")))
    }

    if (b == pi) {
        b <- log10(pi)
    }

    return(10 ^ seq(a, b, length = n))
}

