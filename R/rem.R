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
  negativeX = which(x < 0)
  ans = abs(x) %% y
  if (length(negativeX) > 0) {
    ans[negativeX] = -ans[negativeX]
  }
  if (flip ==  TRUE) {
    ans = -ans
  }
  return(ans)
}

