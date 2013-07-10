\name{plot.conceptmaps}
\alias{plot.conceptmaps}
\title{Plotting a series of concept maps}
\usage{
\method{plot}{conceptmaps}(x, edge.labels = T, max.label.len = 25,
  scale = 1, layout = NULL, ...)
}
\arguments{
  \item{x}{A conceptmaps object.}

  \item{edge.labels}{If TRUE, the labels of edges will be
  plotted as well.}

  \item{max.label.len}{The maximal length of labels (in
  characters) that are plotted completely. Longer labels
  will be shortend by "...".}

  \item{scale}{Overall scaling factor that is applied to
  the plot.}

  \item{layout}{If not NULL, must be one of
  "fruchterman.reingold", "kamada.kawai", "spring" or
  "reingold.tilford". The corresponding layouting algorithm
  of the igraph package will be called. If it is NULL, the
  layouting based on communities and a circular layout will
  be used.}

  \item{...}{-}
}
\value{
-
}
\description{
\code{plot} plots a set of concept maps. The layout is
determined based on the union of all concept maps, then
each map is individually plotted using this fixed layout.
Is escpecially useful for visualizing horizontal
landscapes.
}
\examples{
#Create concept maps from three random graphs
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g2 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
g3 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
E(g1)$name <- rep("", length(E(g1)))
E(g2)$name <- rep("", length(E(g2)))
E(g3)$name <- rep("", length(E(g3)))
#Create conceptmaps object from three conceptmap objects
simple_cms = conceptmaps(list(conceptmap(g1), conceptmap(g2), conceptmap(g3)))

plot(simple_cms, layout="spring")
}

