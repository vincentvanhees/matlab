#
# SIZE.R - Array dimensions
#


##-----------------------------------------------------------------------------
size <- function(x) {
    if (is.vector(x)) {
        len <- length(x)
    } else if (is.matrix(x)) {
        len <- dim(x)
    } else {
        stop('Argument "x" must be vector or matrix')
    }

    return(as.size_t(len))
}

