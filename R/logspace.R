#
# LOGSPACE.R - Generate logarithmically spaced vectors
#


##-----------------------------------------------------------------------------
logspace <- function(a, b, n = 50) {
    if (!(is.numeric(a) && length(a) == 1)) {
        stop(paste("argument", sQuote("a"), "must be a scalar"))
    }
    if (!(is.numeric(b) && length(b) == 1)) {
        stop(paste("argument", sQuote("b"), "must be a scalar"))
    }
    if (!(is.numeric(n) && length(n) == 1)) {
        stop(paste("argument", sQuote("n"), "must be a scalar"))
    }
    if (b == pi) {
        b <- log10(pi)
    }
    return(10 ^ seq(a, b, length = n))
}

