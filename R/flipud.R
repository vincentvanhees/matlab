#
# FLIPUD.R - Flip matrices up-down
#

library(methods)


##-----------------------------------------------------------------------------
setGeneric("flipud", function(object) {
    standardGeneric("flipud")
})

setMethod("flipud", signature(object = "vector"), function(object) {
    return(rev(object));
})

setMethod("flipud", signature(object = "matrix"), function(object) {
    m <- matlab::size(object)[1];
    return(object[m:1,]);
})

setMethod("flipud", signature(object = "array"), function(object) {
    stop('Argument "object" must either be a vector or matrix')
})

setMethod("flipud", signature(object = "ANY"), function(object) {
    stop(paste('Method not defined for', data.class(object), 'argument'))
})

setMethod("flipud", signature(object = "missing"), function(object) {
    stop('Argument "object" missing')
})

