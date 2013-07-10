\name{analyze.subgraphs}
\alias{analyze.subgraphs}
\title{Analyzing small subgraph patterns.}
\usage{
analyze.subgraphs(maps, concept.list)
}
\arguments{
  \item{maps}{A conceptmaps object.}

  \item{concept.list}{A list of concepts (as strings) that
  define the subgraphs to be analyzed. must be between 2
  and 4 concepts in length.}
}
\value{
A list with two elements. The first is a vector that
contains the absolute number of occurrences for each
subgraph pattern. The second element is a list of igraph
objects of the pattern themselves.
}
\description{
\code{analyze.subgraphs} analyzes the frequency of subgraph
patterns given a list of concepts and a set of maps in a
conceptmaps object.
}
\examples{
#Create concept maps from three random graphs
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g2 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g3 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)

#Create conceptmaps object from three conceptmap objects
simple_cms = conceptmaps(list(conceptmap(g1), conceptmap(g2), conceptmap(g3)))

analyze.subgraphs(simple_cms, c("1", "2", "3"))
}

