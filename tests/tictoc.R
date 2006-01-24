###
### TICTOC.R
###

test.toc <- function(delay, expected) {
    Sys.sleep(delay)
    all.equal(matlab::toc(FALSE),
              expected,
              tolerance = 0.10)
}

matlab::tic()
try(test.toc(4, 4))
try(test.toc(2, 4+2))

