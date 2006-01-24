###
### FLIPLR.R - Flip matrices left-right
###

library(methods)


##-----------------------------------------------------------------------------
setGeneric("fliplr",
           function(object) {
               #cat("generic", match.call()[[1]], "\n")
               standardGeneric("fliplr")
           })

setMethod("fliplr",
          signature(object = "vector"),
          function(object) {
              #cat(match.call()[[1]], "(vector)", "\n")
              return(rev(object))
           })

setMethod("fliplr",
          signature(object = "matrix"),
          function(object) {
              #cat(match.call()[[1]], "(matrix)", "\n")
              n <- matlab::size(object)[2]
              return(object[,n:1])
           })

setMethod("fliplr",
          signature(object = "array"),
          function(object) {
              #cat(match.call()[[1]], "(array)", "\n")
              stop(paste("argument", sQuote("object"), "must be vector or matrix"))
           })

setMethod("fliplr",
          signature(object = "ANY"),
          function(object) {
              #cat(match.call()[[1]], "(ANY)", "\n")
              stop(paste("method not defined for", data.class(object), "argument"))
           })

setMethod("fliplr",
          signature(object = "missing"),
          function(object) {
              #cat(match.call()[[1]], "(missing)", "\n")
              stop(paste("argument", sQuote("object"), "missing"))
           })

