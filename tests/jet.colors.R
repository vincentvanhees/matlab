###
### JET.COLORS.R
###


##-----------------------------------------------------------------------------
test.jet.colors <- function(input, expected) {
    output <- do.call(getFromNamespace("jet.colors", "matlab"), input)
    identical(output, expected)
}

jet.m0.expected <- character(0)
jet.m1.expected <- "#00FFFF"
jet.m8.expected <- c("#0000FF",
                     "#0080FF",
                     "#00FFFF",
                     "#80FF80",
                     "#FFFF00",
                     "#FF8000",
                     "#FF0000",
                     "#800000")

test.jet.colors(list(n = 0), jet.m0.expected)
test.jet.colors(list(n = 1), jet.m1.expected)
test.jet.colors(list(n = 8), jet.m8.expected)

