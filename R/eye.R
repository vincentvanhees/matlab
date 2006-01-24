###
### EYE.R - Create an identity matrix
###


##-----------------------------------------------------------------------------
eye <- function(n, m = n) {
    if (!is.numeric(n)) {
        stop(paste("argument", sQuote("n"), "must be numeric"))
    } else if (!(length(n) == 1)) {
        stop(paste("argument", sQuote("n"), "must be of length 1"))
    } else if (!(n > 0)) {
        stop(paste("argument", sQuote("n"), "must be a positive quantity"))
    }

    if (!is.numeric(m)) {
        stop(paste("argument", sQuote("m"), "must be numeric"))
    } else if (!(length(m) == 1)) {
        stop(paste("argument", sQuote("m"), "must be of length 1"))
    } else if (m <= 0) {
        stop(paste("argument", sQuote("m"), "must be a positive quantity"))
    }

    # Handle special case of size argument
    if (matlab:::is.size_t(n) == TRUE) {
        m <- 1
    }

    return(diag(1, n, m))
}

