\name{ones}
\alias{ones}
\alias{zeros}
\title{MATLAB ones/zeros functions}
\description{
  Create a matrix consisting of all ones or zeros.
}
\usage{
ones(n, m = n)
zeros(n, m = n)
}
\arguments{
  \item{n, m}{dimensions for the result}
}
\value{
   Returns matrix consisting only of ones (or zeros).
   Defaults to square if second dimension argument \code{m} not provided.
}
\examples{
ones(3)
zeros(3)
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{interface}

