\name{ceil}
\alias{ceil}
\title{MATLAB ceil function}
\description{
  Rounds to the nearest integer.
}
\usage{
ceil(x)
}
\arguments{
  \item{x}{numeric to be rounded}
}
\details{
   Simply invokes \code{base::ceiling} for those more used to C library API
name.
}
\value{
   Returns \code{vector} containing smallest integers not less than the
   corresponding elements of argument \code{x}.
}
\examples{
ceil(c(0.9, 1.3, 2.4))
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{interface}

