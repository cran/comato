% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/concept_map.r
\name{conceptmap.matrix}
\alias{conceptmap.matrix}
\title{Creation of a conceptmap object from matrix data}
\usage{
\method{conceptmap}{matrix}(x, ...)
}
\arguments{
\item{x}{A matrix of character vectors with at least 3 columns. Each row is of the form:
start, end, label, (edge attribute 1), ..., (edge attribute m).
Each such row will be interpreted as a directed edge from concept "start" to concept "end" with the name "label" and (optional) m additional edge attributes.
The colum names of \code{map.data}, if present, will be preserved as the names for the attributes.}

\item{...}{-}
}
\value{
A conceptmap object.
}
\description{
\code{conceptmap} creates a conceptmap object from a given matrix of a particular format (see below).
}
\examples{
data = rbind(cbind("Object", "Class", "is instance of"), cbind("Class", "Attribute", "has"))
cm = conceptmap(data)
}
