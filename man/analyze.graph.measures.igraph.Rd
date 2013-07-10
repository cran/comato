\name{analyze.graph.measures.igraph}
\alias{analyze.graph.measures.igraph}
\title{Analyzing graph measures of an igraph object}
\usage{
\method{analyze.graph.measures}{igraph}(x)
}
\arguments{
  \item{x}{An igraph object.}
}
\value{
A list with named components that contain the betweenness
measure, the edge.connectivity, the diameter, the degree
distribution and the communities using the Fastgreedy
algorithm.
}
\description{
\code{analyze.graph.measures.igraph} is a convenience
method that can be called directly on the result of
\code{\link{landscape}}. It works just like
\code{\link{analyze.graph.measures.conceptmap}}
}
\examples{
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(15, 0.7, type="gnp"), "name", value=1:15)
analyze.graph.measures(g1)
}

