\name{repmat}
\alias{repmat}
\title{MATLAB repmat function}
\description{
  Replicate and tile a matrix.
}
\usage{
repmat(A, m, n = if (length(m) == 1)m)
}
\arguments{
  \item{A}{numeric vector or matrix to be tiled}
  \item{n, m}{dimensions for the result}
}
\value{
   Returns matrix with value \code{A} tiled to the number of dimensions specified.
   Defaults to square if second dimension argument \code{n} not provided.
}
\examples{
repmat(1, 3)	# same as ones(3)
repmat(matrix(1:4, 2, 2), 3)
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{interface}

