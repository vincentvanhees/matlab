\name{size}
\alias{size}
\alias{size,vector,missing-method}
\alias{size,matrix,integer-method}
\alias{size,matrix,missing-method}
\alias{size,matrix,numeric-method}
\alias{size,array,integer-method}
\alias{size,array,missing-method}
\alias{size,array,numeric-method}
\alias{size,missing-method}
\title{MATLAB size function}
\description{
  Provides dimensions of \code{X}.
}
\usage{
size(X, dimen)
}
\arguments{
  \item{X}{numeric vector or matrix}
  \item{dimen}{numeric scalar specifies particular dimension}
}
\details{
   This is an S4 generic function.
   Invokes \code{base::length} or \code{base::dim} depending on argument \code{X}.
}
\value{
   Returns class \code{size_t} containing the dimensions of input argument.
}
\examples{
size(1:8)
size(matrix(1:8, 2, 4))
size(matrix(1:8, 2, 4), 2)
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{interface}

