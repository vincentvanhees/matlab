###
### SIZE_T.R - Size class
###

library(methods)


##-----------------------------------------------------------------------------
setClass("size_t",
         contains = "integer",
         prototype = as.integer(0))


##-----------------------------------------------------------------------------
size_t <- function(x) {
    new("size_t", as.integer(x))
}


##-----------------------------------------------------------------------------
is.size_t <- function(x) {
    return(data.class(x) == "size_t")
}


##-----------------------------------------------------------------------------
as.size_t <- function(x) {
    return(size_t(x))
}

