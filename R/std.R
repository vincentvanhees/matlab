#
# STD.R - Standard deviation
#


##-----------------------------------------------------------------------------
std <- function(x, flag = 0) {
    if (flag != 0) {
        stop('Biased standard deviation not implemented')
    }
    sd(x)
}

