\name{size}
\alias{size}
\title{MATLAB size function}
\description{
  Provides dimensions of \code{x}.
}
\usage{
size(x)
}
\arguments{
  \item{x}{numeric vector or matrix}
}
\details{
   Invokes \code{base::length} or \code{base::dim} depending on argument \code{x}.
}
\value{
   Returns class \code{size_t} containing the dimensions of input argument.
}
\examples{
size(1:8)
size(matrix(1:8, 2, 4))
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{interface}

