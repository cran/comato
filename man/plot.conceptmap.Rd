\name{plot.conceptmap}
\alias{plot.conceptmap}
\title{Plotting a conceptmap}
\usage{
\method{plot}{conceptmap}(x, edge.labels = T, max.label.len = 25,
  scale = 1, layout = NULL, ...)
}
\arguments{
  \item{x}{A conceptmap object.}

  \item{edge.labels}{If TRUE, the labels of edges will be
  plotted as well.}

  \item{max.label.len}{The maximal length of labels (in
  characters) that are plotted completely. Longer labels
  will be shortend by "...".}

  \item{scale}{Overall scaling factor that is applied to
  the plot.}

  \item{layout}{If not NULL, must either be one of
  "fruchterman.reingold", "kamada.kawai", "spring" or
  "reingold.tilford" or a numeric matrix. If it is a
  string, the corresponding layouting algorithm of the
  igraph package will be called. If it is a numeric matrix,
  it must contain a row for each concept and two columns
  that determine the x and y coordinates of this concept.
  Then this layout will be used directly.}

  \item{...}{-}
}
\value{
-
}
\description{
\code{plot} plots a concept map. Includes finding a good
layout based on communities and a circular layout. Is
especially suited for plotting larger concept maps, in
particular amalgamations.
}
\examples{
#Create concept map from a random graph
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)
E(g1)$name <- rep("", length(E(g1)))
plot(conceptmap(g1), edge.labels=FALSE, layout="kamada.kawai")
}

