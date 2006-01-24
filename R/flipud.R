###
### FLIPUD.R - Flip matrices up-down
###

library(methods)


##-----------------------------------------------------------------------------
setGeneric("flipud",
           function(object) {
               #cat("generic", match.call()[[1]], "\n")
               standardGeneric("flipud")
}           )

setMethod("flipud",
          signature(object = "vector"),
          function(object) {
              #cat(match.call()[[1]], "(vector)", "\n")
              return(rev(object))
          })

setMethod("flipud",
          signature(object = "matrix"),
          function(object) {
              #cat(match.call()[[1]], "(matrix)", "\n")
              m <- matlab::size(object)[1]
              return(object[m:1,])
          })

setMethod("flipud",
          signature(object = "array"),
          function(object) {
              #cat(match.call()[[1]], "(array)", "\n")
              stop(paste("argument", sQuote("object"), "must be vector or matrix"))
          })

setMethod("flipud",
          signature(object = "ANY"),
          function(object) {
              #cat(match.call()[[1]], "(ANY)", "\n")
              stop(paste("method not defined for", data.class(object), "argument"))
          })

setMethod("flipud",
          signature(object = "missing"),
          function(object) {
              #cat(match.call()[[1]], "(missing)", "\n")
              stop(paste("argument", sQuote("object"), "missing"))
          })

