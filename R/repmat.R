#
# REPMAT.R - Replicate and tile an array
#


##-----------------------------------------------------------------------------
repmat <- function(A, m, n = if (length(m) == 1)m) {
    m <- c(m, n)
    stopifnot(length(m) == 2)
    kronecker(matrix(1, m[1], m[2]), A)
}

