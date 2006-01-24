###
### IMAGESC.R - Displays matrix C as an image with its data scaled to use the
###             full color palette.
###


##-----------------------------------------------------------------------------
imagesc <- function(C, ...) {
    if (!(is.numeric(C) && is.matrix(C))) {
        stop(paste(sQuote("C"), "must be matrix"))
    }

    range.C <- range(C)
    min.lim.C <- round(range.C[1])
    max.lim.C <- round(range.C[2])

    x <- seq(ncol(C))
    y <- seq(nrow(C))
    graphics::image(x    = x,
                    y    = y,
                    z    = t(C)[,nrow(C):1],
                    zlim = c(min.lim.C, max.lim.C),
                    axes = FALSE,
                    ...)

    axis(SIDE.BELOW, x)
    axis(SIDE.LEFT,  y, labels = rev(y), las = LAS.HORIZONTAL)
    box()

    invisible(NULL)
}

