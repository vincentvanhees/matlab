###
### LOGSPACE.R - Generate logarithmically spaced vectors
###


##-----------------------------------------------------------------------------
logspace <- function(a, b, n = 50) {
    if (!is.numeric(a)) {
        stop(paste("argument", sQuote("a"), "must be numeric"))
    } else if (!(length(a) == 1)) {
        stop(paste("argument", sQuote("a"), "must be of length 1"))
    }

    if (!is.numeric(b)) {
        stop(paste("argument", sQuote("b"), "must be numeric"))
    } else if (!(length(b) == 1)) {
        stop(paste("argument", sQuote("b"), "must be of length 1"))
    }

    if (!is.numeric(n)) {
        stop(paste("argument", sQuote("n"), "must be numeric"))
    } else if (!(length(n) == 1)) {
        stop(paste("argument", sQuote("n"), "must be of length 1"))
    }

    if (b == pi) {
        b <- log10(pi)
    }

    return(10 ^ seq(a, b, length = n))
}

