#
# ZEROS.R - Create a matrix of all zeros
#


##-----------------------------------------------------------------------------
zeros <- function(n, m = n) {
    if (!(is.numeric(n) && (n > 0))) {
        stop('Argument "n" must be natural number');
    }

    if (!(is.numeric(m) && (m > 0))) {
        stop('Argument "m" must be natural number');
    }

    # Handle special case of size argument
    if (matlab:::is.size_t(n) == TRUE) {
        m <- 1;
    }

    .fillMatrix <- function(n, m = n, x = 0) {
        nm <- rep.int(x, (n*m));
        return(matrix(nm, n, m));
    }

    return(.fillMatrix(n, m));
}

