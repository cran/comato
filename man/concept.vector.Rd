\name{concept.vector}
\alias{concept.vector}
\title{Forming the concept vector of a conceptmap object}
\usage{
concept.vector(x)
}
\arguments{
  \item{x}{A conceptmap object.}
}
\value{
A numeric vector. The columns are named after the concepts
and sorted alphabetically.
}
\description{
\code{concept.vector} transforms a concept map into a
numeric vector that contains for each occuring concept the
number of adjacent edges.
}
\examples{
#Create concept map from a random graph
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
cm = conceptmap(g1)

concept.vector(cm)
}

