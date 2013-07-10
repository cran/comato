\name{pathfinder.igraph}
\alias{pathfinder.igraph}
\title{Creating a Pathfinder network from an igraph object}
\usage{
\method{pathfinder}{igraph}(data, q = Inf, r = 1, threshold = 0,
  prune.edges = F, filename = "", ...)
}
\arguments{
  \item{data}{An igraph object.}

  \item{q}{The parameter q used in the Pathfinder
  algorithm. The resulting graph will be q-triangular.}

  \item{r}{The parameter r used in the Pathfinder algorithm
  for the r-metric.}

  \item{threshold}{A numeric value used for pruning the
  graph before the Pathfinder algorithm. The pruning works
  in conjunction with the value of \code{prune.edges}.}

  \item{prune.edges}{If TRUE, each entry of the weight
  matrix that is lower than \code{threshold} will be set to
  0 and columns with a resulting sum of 0 are removed. If
  FALSE, only columns of the weight matrix with a sum of
  less than \code{threshold} will be removed.}

  \item{filename}{Optional. If specified, the resulting
  Pathfinder network will be stored in TGF format in the
  given file.}

  \item{...}{-}
}
\value{
An igraph object that represents the Pathfinder network as
a weighted graph.
}
\description{
\code{pathfinder} creates the Pathfinder network from a
weighted graph based on \code{\link{pathfinder.matrix}}. It
is a convenience method that can be called on the result of
a call to \code{\link{landscape}}
}
\examples{
#Create concept maps from three random graphs
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g2 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g3 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)

#Create conceptmaps object from three conceptmap objects
simple_cms = conceptmaps(list(conceptmap(g1), conceptmap(g2), conceptmap(g3)))
pathfinder(landscape(simple_cms, result="graph", mode="undirected"))
}

