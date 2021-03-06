\name{mv}
\alias{mv}
\title{Rename an object in the workspace}
\usage{
  mv(currentName, newName)
}
\arguments{
  \item{currentName}{The current name of the object}

  \item{newName}{The new name for the object}
}
\description{
  Renames an object in the workspace, "removing" the orinal
  object. This does so without creating a copy of the
  original object. If an object in the workspace currently
  exists with the new name specified, the function prompts
  the user to verify that they want to overwrite that
  object before proceeding.
}
\examples{
x <- runif(1e7)
ls()
x.add <- tracemem(x)
mv(x, y)
identical(x.add, tracemem(y))
ls()
\dontshow{rm(x.add, y)}
}
\author{
  Rolf Turner
}
\references{
  A good amount of discussion on when R makes a copy in
  memory in this discussion thread:
  \url{https://stat.ethz.ch/pipermail/r-help/2008-March/156028.html}.
}

