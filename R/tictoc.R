#
# TICTOC.R - Stopwatch Timer
#


##-----------------------------------------------------------------------------
tic <- function(gcFirst = FALSE) {
    if (gcFirst == TRUE) {
        gc(verbose = FALSE);
    }
    assign("savedTime", proc.time()[3], envir = .MatlabNamespaceEnv);
}


##-----------------------------------------------------------------------------
toc <- function() {
    prevTime <- get("savedTime", envir = .MatlabNamespaceEnv)
    diffTimeSecs <- proc.time()[3] - prevTime;
    cat('Elapsed time is', diffTimeSecs, 'seconds', '\n');
}

