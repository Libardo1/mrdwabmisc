\name{getSize}
\alias{getSize}
\title{Get the size of multiple objects in your workspace}
\usage{
  getSize(pattern = NULL, sort.by = "size")
}
\arguments{
  \item{pattern}{The pattern to be used by
  \code{\link{ls}}. Defaults to \code{"*"}, meaning to
  match anything.}

  \item{sort.by}{Should the output be sorted by object size
  (\code{"size"}) or name (\code{"name"})? Defaults to
  \code{sort.by = "size"}.}
}
\description{
  This is a convenience wrapper around
  \code{\link{object.size}} to get the sizes of multiple
  objects in your workspace. By default, it will list all
  the objects in your workspaces, but a specific pattern to
  match can also be specified.
}
\examples{
AA <- rnorm(10000)
AB <- rnorm(100)
CB <- rnorm(50000)

getSize()
getSize("*B", "name")
getSize("*B", "size")
getSize("^A", "name")
getSize("^A", "size")

\dontshow{rm(AA, AB, CB)}
}
\author{
  Ananda Mahto
}
\seealso{
  \code{\link{ls}}, \code{\link{object.size}}
}

