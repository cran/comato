% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/concept_maps.r
\name{conceptmaps.matrix}
\alias{conceptmaps.matrix}
\title{Creation of a conceptmaps object from a matrix}
\usage{
\method{conceptmaps}{matrix}(x, filter = T, ...)
}
\arguments{
\item{x}{A matrix that represents a set of concept maps. The first colum is taken to identify the map, i.e.
for each value occuring in the first column, the rows with identical values are extracted and \code{\link{conceptmap.matrix}}
is called on the matrix of these rows and the remaining columns to create a conceptmap object.}

\item{filter}{If TRUE, empty concept maps (i.e. concept maps without any proposition) are not contained in the resulting set.}

\item{...}{-}
}
\value{
A conceptmaps object.
}
\description{
\code{conceptmaps} creates a conceptmaps object from a set of concept maps represented as a matrix.
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
}
