#
# FLIPLR.R - Flip matrices left-right
#

library(methods)


##-----------------------------------------------------------------------------
setGeneric("fliplr", function(object) {
    standardGeneric("fliplr")
})

setMethod("fliplr", signature(object = "vector"), function(object) {
    return(rev(object));
})

setMethod("fliplr", signature(object = "matrix"), function(object) {
    n <- matlab::size(object)[2];
    return(object[,n:1]);
})

setMethod("fliplr", signature(object = "array"), function(object) {
    stop('Argument "object" must either be a vector or matrix')
})

setMethod("fliplr", signature(object = "ANY"), function(object) {
    stop(paste('Method not defined for', data.class(object), 'argument'))
})

setMethod("fliplr", signature(object = "missing"), function(object) {
    stop('Argument "object" missing')
})

