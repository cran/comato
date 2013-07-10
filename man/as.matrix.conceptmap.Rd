\name{as.matrix.conceptmap}
\alias{as.matrix.conceptmap}
\title{Convert a conceptmap object to a matrix}
\usage{
\method{as.matrix}{conceptmap}(x, ...)
}
\arguments{
  \item{x}{A conceptmap object.}

  \item{...}{-}
}
\value{
A matrix with 3 columns and one row for each proposition of
the concept map. The 3 columns contain the start and end
node of each proposition as well as the label of the edge
(as character vectors).
}
\description{
\code{as.matrix} converts a conceptmap object into a
matrix. The output can be fed back into
\code{\link{conceptmap.matrix}}.
}

