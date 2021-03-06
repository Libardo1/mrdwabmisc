\name{QAList}
\alias{QAList}
\title{Print a list of question and answers from a Stack Overflow page}
\usage{
  QAList(qid)
}
\arguments{
  \item{qid}{The numeric question ID.}
}
\value{
  A list of the class \code{c("QAList", "list")}
}
\description{
  Print a list of question and answers from a Stack
  Overflow page (entered by question ID number).
}
\details{
  Currently hard-coded ot Stack Overflow, but may be
  generalized for other Stack Exchange sites.
}
\note{
  The formatting is handled by the \code{print.QAList}
  print method. The HTML is still viewable by removing
  \code{"QAList"} from the list class, or by accessing the
  individual list items.
}
\examples{
temp <- QAList(15332195)
temp
temp[[1]]

\dontshow{rm(temp)}
}
\author{
  Ananda Mahto
}

