###
### ISPRIME.R - Array elements that are prime numbers
###


##-----------------------------------------------------------------------------
isprime <- function(x) {
    if (!is.numeric(x)) {
        stop(sprintf("argument %s must be numeric", sQuote("x")))
    }

    if (length(x) == 0) {
        return(integer(0))
    }

    if (any(x < 0) | any(x != round(x))) {
## :TODO: Mention the integer requirement...
        stop(sprintf("each element of %s must be a nonnegative quantity",
                     sQuote("x")))
    }

    return(as.integer(x %in% matlab::primes(max(x))))
}

