\name{as.matrix.conceptmaps}
\alias{as.matrix.conceptmaps}
\title{Convert a conceptmaps object to a matrix}
\usage{
\method{as.matrix}{conceptmaps}(x, ...)
}
\arguments{
  \item{x}{A conceptmaps object.}

  \item{...}{-}
}
\value{
A matrix with 4 columns and one row for each proposition of
one of the concept maps. The 4 columns contain an id of the
map (starting from 1) and then the start and end node of
each proposition as well as the label of the edge (as
character vectors).
}
\description{
\code{as.matrix} converts a conceptmaps object into a
matrix. The output can be fed back into
\code{\link{conceptmaps.matrix}}.
}
\examples{
data = rbind(
 cbind("1", "Object", "Class", "is instance of"),
 cbind("1", "Object", "Attribute", "has"),
 cbind("2", "Class", "Attribute", "possesses"),
 cbind("2", "Attribute", "Data-type", "has"),
 cbind("3", "Object", "Class", "is instance of")
 )
 cms = conceptmaps(data)
 as.matrix(cms)
}

