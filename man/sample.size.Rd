\name{sample.size}
\alias{sample.size}
\title{Determine the optimal sample size of a given population}
\usage{
  sample.size(population, samp.size = NULL, c.lev = 95,
    c.int = NULL, what = "sample", distribution = 50)
}
\arguments{
  \item{population}{The population size for which a sample
  size needs to be calculated.}

  \item{samp.size}{The sample size. This argument is only
  used when calculating the confidence interval, and
  defaults to \code{NULL}.}

  \item{c.lev}{The desired confidence level. Defaults to a
  reasonable 95\%.}

  \item{c.int}{The confidence interval. This argument is
  only used when calculating the sample size. If not
  specified when calculating the sample size, defaults to
  5\% and a message is provided indicating this; this is
  also the default action if \code{c.int = NULL}.}

  \item{what}{Should the function calculate the desired
  sample size or the confidence interval? Accepted values
  are \code{"sample"} and \code{"confidence"} (quoted), and
  defaults to \code{"sample"}.}

  \item{distribution}{Response distribution. Defaults to
  50\% (\code{distribution = 50}), which will give you the
  largest sample size.}
}
\description{
  The sample.size function either calculates the optimum
  survey sample size when provided with a population size,
  or the confidence interval of using a certain sample size
  with a given population. It can be used to generate
  tables (data.frames) of different combinations of inputs
  of the following arguments, which can be useful for
  showing the effect of each of these in sample size
  calculation.
}
\note{
  From a teaching perspective, the function can be used to
  easily make tables which demonstrate how the sample size
  or confidence interval change when different inputs
  change. See the "Advanced Usage" examples. The following
  formulae were used in this function:

  \deqn{\large ss = \frac{-Z^2\times p\times(1-p)}{c^2}}{%
  ss = (-Z^2 * p * (1 - p))/(c^2)}

  \deqn{\large pss = \frac{ss}{1+\frac{ss-1}{pop}}}{% pss =
  ss/(1 + ((ss - 1)/pop))}
}
\examples{
# What should our sample size be for a population of 300?
# All defaults accepted.
sample.size(population = 300)

# What sample should we take for a population of 300
#   at a confidence level of 97\%?
sample.size(population = 300, c.lev = 97)

# What about if we change our confidence interval?
sample.size(population = 300, c.int = 2.5, what = "sample")

# What about if we want to determine the confidence interval
#   of a sample of 140 from a population of 300? A confidence
#   level of 95\% is assumed.
sample.size(population = 300, samp.size = 140, what = "confidence")

## ========================================= ##
## =========== ADVANCED USAGE ============== ##

# What should the sample be for populations of 300 to 500 by 50?
sample.size(population=c(300, 350, 400, 450, 500))

# How does varying confidence levels or confidence intervals
#   affect the sample size?
sample.size(population=300,
       c.lev=rep(c(95, 96, 97, 98, 99), times = 3),
       c.int=rep(c(2.5, 5, 10), each=5))

# What is are the confidence intervals for a sample of
#   150, 160, and 170 from a population of 300?
sample.size(population=300,
       samp.size = c(150, 160, 170),
       what = "confidence")
}
\author{
  Ananda Mahto
}
\references{
  \itemize{ \item See the 2657 Productions News site for
  how this function progressively developed:
  \url{http://news.mrdwab.com/2010/09/10/a-sample-size-calculator-function-for-r/}
  \item The \code{sample.size} function is based on the
  following formulas from the Creative Research Systems web
  page \emph{Sample size formulas for our sample size
  calculator}: \url{http://www.webcitation.org/69kNjMuKe} }
}

