\name{rownames2col}
\alias{rownames2col}
\title{Changes the \code{rownames} of a \code{data.frame} to a column}
\usage{
  rownames2col(inDF, RowName = ".rownames")
}
\arguments{
  \item{inDF}{The input \code{data.frame}.}

  \item{RowName}{The desired name of the new column that
  will be created. Defaults to "\code{.rownames}".}
}
\value{
  A \code{data.frame} with \code{rownames} set to
  \code{NULL} and the original \code{rownames} added as a
  column.
}
\description{
  Sometimes, it is more convenient to have \code{rownames}
  as a column in a \code{data.frame}. This is easy to
  achieve, and even easier with this helper function.
}
\examples{
mydf <- data.frame(x = 1:5, y = letters[1:5],
                   row.names = c("one", "two", "three", "four", "five"))
mydf
rownames2col(mydf)

\dontshow{rm(mydf)}
}
\author{
  Ananda Mahto
}
\seealso{
  \code{\link{rownames}}, \code{\link{data.frame}}
}

