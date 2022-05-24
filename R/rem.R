###
### $Id: rem.R 48 2014-02-05 20:50:54Z plroebuck $
###
### Remainder after division.
###


##-----------------------------------------------------------------------------
rem <- function(x, y) {
  flip = ifelse(test = y < 0, yes = TRUE, no = FALSE)
  if (flip ==  TRUE) {
    x = -x
    y = -y
  }
  ans = abs(x) %% y
  ans = ifelse(test = x < 0, yes = -ans, no = ans)
  if (flip ==  TRUE) ans = -ans
  return(ans)
}

