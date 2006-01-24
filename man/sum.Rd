\name{sum}
\alias{sum}
\alias{sum,ANY-method}
\alias{sum,array,logical-method}
\alias{sum,array,missing-method}
\alias{sum,logical-method}
\alias{sum,matrix,logical-method}
\alias{sum,matrix,missing-method}
\alias{sum,missing-method}
\alias{sum,vector,logical-method}
\alias{sum,vector,missing-method}
\title{MATLAB sum function}
\description{
  Provides sum of elements.
}
\usage{
sum(x, na.rm = FALSE)
}
\arguments{
  \item{x}{numeric to be summed}
  \item{na.rm}{logical scalar. If \code{TRUE}, remove missing values}
}
\details{
  This is an S4 generic function.
}
\value{
  Return value depends on argument \code{x}. If vector, returns the same as
  \code{\link[base]{sum}}. If matrix, returns vector containing the sum of
  each column.
}
\examples{
sum(1:9)
sum(matrix(1:9, 3, 3))
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{arith}

