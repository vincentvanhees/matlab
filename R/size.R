###
### SIZE.R - Array dimensions
###

library(methods)


##-----------------------------------------------------------------------------
setGeneric("size",
           function(X, dimen) {
               #cat("generic", match.call()[[1]], "\n")
               standardGeneric("size")
           })

setMethod("size",
          signature(X = "vector", dimen = "missing"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(vector, missing)", "\n")
              return(as.size_t(length(X)))
          })

setMethod("size",
          signature(X = "matrix", dimen = "missing"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(matrix, missing)", "\n")
              return(as.size_t(dim(X)))
          })

setMethod("size",
          signature(X = "array", dimen = "missing"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(array, missing)", "\n")
              return(as.size_t(dim(X)))
          })

setMethod("size",
          signature(X = "matrix", dimen = "numeric"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(matrix, numeric)", "\n")
              callGeneric(X, as.integer(dimen))
          })

setMethod("size",
          signature(X = "matrix", dimen = "integer"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(matrix, integer)", "\n")
              return(as.size_t(getLengthOfDimension(X, dimen)))
          })

setMethod("size",
          signature(X = "array", dimen = "numeric"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(array, numeric)", "\n")
              callGeneric(X, as.integer(dimen))
          })

setMethod("size",
          signature(X = "array", dimen = "integer"),
          function(X, dimen) {
              #cat(match.call()[[1]],
              #    "(", data.class(X), ", ", data.class(dimen), ")", "\n")
              return(as.size_t(getLengthOfDimension(X, dimen)))
          })

setMethod("size",
          signature(X = "missing"),
          function(X, dimen) {
              #cat(match.call()[[1]], "(missing)", "\n")
              stop(paste("argument", sQuote("X"), "missing"))
          })

getLengthOfDimension <- function(X, dimen) {
    if (is.array(X) == FALSE) {
        stop(paste("argument", sQuote("X"), "must be matrix or array"))
    }

    if (!(length(dimen) == 1)) {
        stop(paste("argument", sQuote("dimen"), "must be of length 1"))
    } else if (dimen < 1) {
        stop(paste("argument", sQuote("dimen"), "must be a positive quantity"))
    }

    len <- if (dimen <= length(dim(X))) {
               dim(X)[dimen]
           } else {
               1	# singleton dimension
           }

    return(as.size_t(len))
}

