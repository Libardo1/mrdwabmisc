\name{moveme}
\alias{moveme}
\title{Reorder elements in a character vector}
\usage{
  moveme(invec, movecommand)
}
\arguments{
  \item{invec}{The input character vector.}

  \item{movecommand}{The command that describes how you
  want to move the items around. See "Details".}
}
\value{
  The input vector reordered according to the instructions
  in \code{movecommand}.
}
\description{
  Reorders elements in a character vector in a "natural
  language" manner.
}
\details{
  This can be a useful function for reordering the columns
  of a \code{data.frame} or \code{data.table} in a
  convenient manner. In such cases, the \code{invec} would
  be \code{names(your_data_frame)}. When using
  \code{data.table}s, remember to use \code{setcolorder} to
  avoid copying.

  The \code{movecommand} argument is specified in the form
  of \code{"a, b before f"}. The positions to move are:
  \itemize{ \item \strong{first}: move the specified items
  to the first postion. \item \strong{last}: move the
  specified items to the last position. \item
  \strong{before}: move the specified items before the
  value mentioned. \item \strong{after}: move the specified
  items after the value mentioned. } Multiples are allowed:
  \itemize{ \item Specify multiple values to be moved by
  separating them with a comma. \item Chain multiple move
  commands by separating them with a semicolon. }
}
\examples{
myvec <- letters[1:10]
moveme(myvec, "a last; b, e, g before d; c first; h after j")

\dontshow{rm(myvec)}
}
\author{
  Ananda Mahto
}
\references{
  This function was written as an answer to the following
  Stack Overflow question:
  \url{http://stackoverflow.com/q/12544888/1270695}
}
\seealso{
  \code{\link{append}}
}

