#
# ZZZ.R
#


# Namespace environment for this package
.MatlabNamespaceEnv <- new.env()


##
## Package/Namespace Hooks
##

##-----------------------------------------------------------------------------
.onAttach <- function(libname, pkgname) {
    verbose <- getOption("verbose")
    if (verbose) {
        cat("Matlab support package attached.",
            "Type library(help='matlab') to see package documentation.",
            sep="\n");
    }
}


##-----------------------------------------------------------------------------
.onLoad <- function(libname, pkgname) {
    environment(.MatlabNamespaceEnv) <- asNamespace("matlab")
    assign("savedTime", 0, envir = .MatlabNamespaceEnv)
}

