###
### FULLFILE.R
###

test.fullfile <- function(input, expected) {
    identical(matlab::fullfile(input$dir, input$subdir, input$file),
              expected)
}

pathname <- list(dir    = path.expand("~"),
                 subdir = "somedir",
                 file   = "foo.txt")
fullfile.expected <- file.path(path.expand("~"), "somedir", "foo.txt")

test.fullfile(pathname, fullfile.expected)

