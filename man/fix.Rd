\name{fix}
\alias{fix}
\title{MATLAB fix function}
\description{
  Rounds toward zero.
}
\usage{
fix(A)
}
\arguments{
  \item{A}{numeric to be rounded}
}
\details{
   Simply invokes \code{base::trunc}.
}
\value{
   Returns \code{vector} containing integers by truncating the
   corresponding values of argument \code{A} toward zero.
}
\examples{
fix(c(1.3, 2.5, 3.7))
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{interface}

