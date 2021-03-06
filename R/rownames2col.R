#' Changes the \code{rownames} of a \code{data.frame} to a column
#' 
#' Sometimes, it is more convenient to have \code{rownames} as a column in a
#' \code{data.frame}. This is easy to achieve, and even easier with this helper
#' function.
#' 
#' @param inDF The input \code{data.frame}.
#' @param RowName The desired name of the new column that will be created.
#' Defaults to "\code{.rownames}".
#' @return A \code{data.frame} with \code{rownames} set to \code{NULL} and the
#' original \code{rownames} added as a column.
#' @author Ananda Mahto
#' @seealso \code{\link{rownames}}, \code{\link{data.frame}}
#' @examples
#' 
#' mydf <- data.frame(x = 1:5, y = letters[1:5],
#'                    row.names = c("one", "two", "three", "four", "five"))
#' mydf
#' rownames2col(mydf)
#' 
#' \dontshow{rm(mydf)}
#' 
#' @export rownames2col
rownames2col <- function(inDF, RowName = ".rownames") {
  temp <- data.frame(rownames(inDF), inDF, row.names = NULL)
  names(temp)[1] <- RowName
  temp
}
