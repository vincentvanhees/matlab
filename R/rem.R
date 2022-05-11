###
### $Id: rem.R 48 2014-02-05 20:50:54Z plroebuck $
###
### Remainder after division.
###


##-----------------------------------------------------------------------------
rem <- function(x, y) {
    ans <- matlab::mod(x, y)
    if (!((any(x > 0) && y > 0) ||
          (any(x < 0) && y < 0))) {
        ans <- ans - y
    }

    return(ans)
}

