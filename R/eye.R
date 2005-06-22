#
# EYE.R - Create an identity matrix
#


##-----------------------------------------------------------------------------
eye <- function(n, m = n) {
    if (!(is.numeric(n) && (n > 0))) {
        stop(paste("argument", sQuote("n"), "must be natural number"))
    }

    if (!(is.numeric(m) && (m > 0))) {
        stop(paste("argument", sQuote("m"), "must be natural number"))
    }

    # Handle special case of size argument
    if (matlab:::is.size_t(n) == TRUE) {
        m <- 1
    }

    return(diag(1, n, m))
}

