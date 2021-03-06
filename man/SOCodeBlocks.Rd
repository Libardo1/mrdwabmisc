\name{SOCodeBlocks}
\alias{SOCodeBlocks}
\title{Return a list of the code blocks at a Stack Overflow question page}
\usage{
  SOCodeBlocks(qid)
}
\arguments{
  \item{qid}{The numeric question ID}
}
\value{
  A list of the class c("SOCodeBlocks", "list")
}
\description{
  Return a list of the code blocks at a Stack Overflow
  question page (specified by numeric question ID).
}
\details{
  Currently hard-coded ot Stack Overflow, but may be
  generalized for other Stack Exchange sites.
}
\note{
  The formatting is handled by the
  \code{print.SOCodeBlocks} print method. The HTML is still
  viewable by removing "SOCodeBlocks" from the list class,
  or by accessing the individual list items.
}
\examples{
temp <- SOCodeBlocks(15332195)
temp
temp[[6]]

\dontshow{rm(temp)}
}
\author{
  Ananda Mahto
}

