#
# TICTOC.R - Stopwatch Timer
#


##-----------------------------------------------------------------------------
tic <- function(gcFirst = FALSE) {
    if (gcFirst == TRUE) {
        gc(verbose = FALSE)
    }
    assign("savedTime", proc.time()[3], envir = .MatlabNamespaceEnv)
    invisible()
}


##-----------------------------------------------------------------------------
toc <- function(echo = TRUE) {
    prevTime <- get("savedTime", envir = .MatlabNamespaceEnv)
    diffTimeSecs <- proc.time()[3] - prevTime
    if (echo) {
        cat("elapsed time is", diffTimeSecs, "seconds", "\n")
        return(invisible())
    } else {
        return(diffTimeSecs)
    }
}

