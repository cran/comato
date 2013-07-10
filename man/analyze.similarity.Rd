\name{analyze.similarity}
\alias{analyze.similarity}
\title{Analyzing graph similarity.}
\usage{
analyze.similarity(map1, map2)
}
\arguments{
  \item{map1}{A conceptmap object.}

  \item{map2}{A conceptmap object.}
}
\value{
A value between 0 and 1 that indicated the structural
similariy of the underlying graphs. The graphs need not
share the same set of nodes.
}
\description{
\code{analyze.similarity} calculates a measure of graph
similarity between two concept maps.
}
\examples{
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(15, 0.7, type="gnp"), "name", value=1:15)
g2 = set.vertex.attribute(erdos.renyi.game(15, 0.7, type="gnp"), "name", value=1:15)
analyze.similarity(conceptmap(g1), conceptmap(g2))
}
\seealso{
The structural similarity that is calculated is described
in: Goldsmith, Timothy E.; Davenport, Daniel M. (1990):
Assessing Structural Similarity of Graphs. In: Roger W.
Schvaneveldt (Hg.): Pathfinder associative networks.
Studies in knowledge organizations. Norwood, N.J: Ablex
Pub. Corp., S. 74-87.
}

