\name{conceptmaps.list}
\alias{conceptmaps.list}
\title{Creation of a conceptmaps object from a list}
\usage{
\method{conceptmaps}{list}(x, filter = T, ...)
}
\arguments{
  \item{x}{A list of conceptmap objects.}

  \item{filter}{If TRUE, empty concept maps (i.e. concept
  maps without any proposition) are not contained in the
  resulting set.}

  \item{...}{-}
}
\value{
A conceptmaps object.
}
\description{
\code{conceptmaps} creates a conceptmaps object from a list
of conceptmap objects.
}
\examples{
#Create concept maps from three random graphs
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g2 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g3 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)

#Create conceptmaps object from three conceptmap objects
simple_cms = conceptmaps(list(conceptmap(g1), conceptmap(g2), conceptmap(g3)))
}

