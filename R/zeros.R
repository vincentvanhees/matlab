###
### ZEROS.R - Create a matrix of all zeros
###


##-----------------------------------------------------------------------------
zeros <- function(n, m = n) {
    if (!is.numeric(n)) {
        stop(paste("argument", sQuote("n"), "must be numeric"))
    } else if (!(length(n) == 1)) {
        stop(paste("argument", sQuote("n"), "must be of length 1"))
    } else if ((n <= 0)) {
        stop(paste("argument", sQuote("n"), "must be a positive quantity"))
    }

    if (!is.numeric(m)) {
        stop(paste("argument", sQuote("m"), "must be numeric"))
    } else if (!(length(m) == 1)) {
        stop(paste("argument", sQuote("m"), "must be of length 1"))
    } else if (m <= 0) {
        stop(paste("argument", sQuote("m"), "must be a positive quantity"))
    }

    ## Handle special case of size argument
    if (matlab:::is.size_t(n) == TRUE) {
        m <- 1
    }

    .fillMatrix <- function(n, m = n, x = 0) {
        nm <- rep.int(x, (n*m))
        return(matrix(nm, n, m))
    }

    return(.fillMatrix(n, m))
}

