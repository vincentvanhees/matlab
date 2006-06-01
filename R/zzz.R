###
### ZZZ.R
###


## Namespace environment for this package
.MatlabNamespaceEnv <- new.env()


##
## Package/Namespace Hooks
##

##-----------------------------------------------------------------------------
.onAttach <- function(libname, pkgname) {
    verbose <- getOption("verbose")
    if (verbose) {
        local({
            libraryPkgName <- function(pkgname, sep = "_") {
                unlist(strsplit(pkgname, sep, fixed = TRUE))[1]
            }
            packageDescription <- function(pkgname) {
                fieldnames <- c("Title", "Version")
                descfile <- file.path(libname, pkgname, "DESCRIPTION")
                desc <- as.list(read.dcf(descfile, fieldnames))
                names(desc) <- fieldnames
                return(desc)
            }

            desc <- packageDescription(pkgname)
            message(sprintf("%s, version %s", desc$Title, desc$Version))
            message(sprintf("Type library(help=%s) to see package documentation",
                            libraryPkgName(pkgname)))
        })
    }
}


##-----------------------------------------------------------------------------
.onLoad <- function(libname, pkgname) {
    ## In case namespace is loaded (via import) by package that doesn't depend
    ## on S4 methods and used in a session with non-default set of packages
    require(methods)

    ## Create environment for internal usage
    environment(.MatlabNamespaceEnv) <- asNamespace("matlab")

    ## Load internal variables
    assign("savedTime", 0, envir = .MatlabNamespaceEnv)

    ## Allow no changes or additions to environment
    lockEnvironment(.MatlabNamespaceEnv, bindings = TRUE)

    ## Only allow internal vars to change
    unlockBinding("savedTime", .MatlabNamespaceEnv)
}

