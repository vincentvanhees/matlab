#
# SUM.R - Sum of elements
#

library(methods)


##-----------------------------------------------------------------------------
setGeneric("sum", function(x, na.rm = FALSE) {
    #cat("generic sum\n");
    if (!is.logical(na.rm)) {
        stop('Argument "na.rm" must be logical')
    }
    standardGeneric("sum")
}, useAsDefault = FALSE)

setMethod("sum", signature(x = "vector", na.rm = "logical"), function(x, na.rm) {
    #cat("sum(vector, logical)\n")
    #cat("\tx = ", x, "\n")
    #cat("\tna.rm = ", na.rm, "\n")
    return(base::sum(x, na.rm = na.rm));
})

setMethod("sum", signature(x = "vector", na.rm = "missing"), function(x, na.rm) {
    #cat("sum(vector, missing)\n")
    callGeneric(x, na.rm);
})

setMethod("sum", signature(x = "matrix", na.rm = "logical"), function(x, na.rm) {
    #cat("sum(matrix, logical)\n")
    #cat("\tx =\n")
    #print(x)
    #cat("\n")
    #cat("\tna.rm = ", na.rm, "\n")
    return(apply(x, 2, base::sum, na.rm = na.rm));
})

setMethod("sum", signature(x = "matrix", na.rm = "missing"), function(x, na.rm) {
    #cat("sum(matrix, missing)\n")
    callGeneric(x, na.rm)
})

setMethod("sum", signature(x = "array", na.rm = "logical"), function(x, na.rm) {
    stop(paste('Method not implemented for', data.class(x), 'argument'))
})

setMethod("sum", signature(x = "array", na.rm = "missing"), function(x, na.rm) {
    #cat("sum(array, missing)\n")
    callGeneric(x, na.rm)
})

setMethod("sum", signature(x = "logical"), function(x, na.rm) {
    stop('Argument "x" cannot be logical')
})

setMethod("sum", signature(x = "ANY"), function(x, na.rm) {
    #cat("sum(ANY)\n")
    stop(paste('Method not defined for', data.class(x), 'argument'))
})

setMethod("sum", signature(x = "missing"), function(x, na.rm) {
    stop('Argument "x" missing')
})

