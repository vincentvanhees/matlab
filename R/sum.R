###
### SUM.R - Sum of elements
###

library(methods)


##-----------------------------------------------------------------------------
setGeneric("sum",
           function(x, na.rm = FALSE) {
               #cat("generic", match.call()[[1]], "\n")
               if (!is.logical(na.rm)) {
                   stop(sprintf("argument %s must be logical", sQuote("na.rm")))
               } else if (!(length(na.rm) == 1)) {
                   stop(sprintf("argument %s must be of length 1",
                                sQuote("na.rm")))
               }

               standardGeneric("sum")
           },
           useAsDefault = FALSE)

setMethod("sum",
          signature(x = "vector", na.rm = "logical"),
          function(x, na.rm) {
              #cat(match.call()[[1]], "(vector, logical)", "\n")
              #cat("\tx = ", x, "\n")
              #cat("\tna.rm = ", na.rm, "\n")
              return(base::sum(x, na.rm = na.rm))
          })

setMethod("sum",
          signature(x = "vector", na.rm = "missing"),
          function(x, na.rm) {
              #cat(match.call()[[1]], "(vector, missing)", "\n")
              callGeneric(x, na.rm)
          })

setMethod("sum",
          signature(x = "matrix", na.rm = "logical"),
          function(x, na.rm) {
              #cat(match.call()[[1]], "(matrix, logical)", "\n")
              #cat("\tx =\n"); print(x); cat("\n")
              #cat("\tna.rm = ", na.rm, "\n")
              return(apply(x, 2, base::sum, na.rm = na.rm))
          })

setMethod("sum",
          signature(x = "matrix", na.rm = "missing"),
          function(x, na.rm) {
              #cat(match.call()[[1]], "(matrix, missing)", "\n")
              callGeneric(x, na.rm)
          })

setMethod("sum",
          signature(x = "array", na.rm = "logical"),
          function(x, na.rm) {
              stop(sprintf("method not implemented for %s argument",
                           data.class(x)))
          })

setMethod("sum",
          signature(x = "array", na.rm = "missing"),
          function(x, na.rm) {
              #cat(match.call()[[1]], "(array, missing)", "\n")
              callGeneric(x, na.rm)
          })

setMethod("sum",
          signature(x = "logical"),
          function(x, na.rm) {
              stop(sprintf("argument %s cannot be logical", sQuote("x")))
          })

setMethod("sum",
          signature(x = "ANY"),
          function(x, na.rm) {
              #cat(match.call()[[1]], "(ANY)", "\n")
              stop(sprintf("method not defined for %s argument", data.class(x)))
          })

setMethod("sum",
          signature(x = "missing"),
          function(x, na.rm) {
              stop(sprintf("argument %s missing", sQuote("x")))
          })

