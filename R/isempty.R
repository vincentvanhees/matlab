###
### ISEMPTY.R - Determine if object is  empty
###


##-----------------------------------------------------------------------------
isempty <- function(A) {
     return(any(matlab::size(A) == 0))
}

