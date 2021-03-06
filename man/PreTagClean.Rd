\name{PreTagClean}
\alias{PreTagClean}
\title{Clean text within \code{<pre><code>} tag blocks}
\usage{
  PreTagClean(x)
}
\arguments{
  \item{x}{The input character vector}
}
\value{
  A character vector
}
\description{
  Text within \code{<pre><code>} tag blocks need to be
  "cleaned". For R code that usually means changing
  \code{&lt;} and \code{&gt;} to \code{<} and \code{>}.
}
\author{
  Ananda Mahto
}

