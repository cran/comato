\name{write.tgf}
\alias{write.tgf}
\title{Saving a concept map to a TGF file}
\usage{
write.tgf(map, file, translation = NULL)
}
\arguments{
  \item{map}{A conceptmap object.}

  \item{file}{The location including filename where the
  file should be stored.}

  \item{translation}{If not NULL, a vector of strings of
  equal length as the number of concepts used in the
  concept map. Then, the names given in this vector will be
  used in the file instead of the original concepts. Can be
  used, for example, to translate the concepts into a
  different language for export.}
}
\value{
-
}
\description{
\code{write.tgf} stores the graph underlying a conceptmap
object into a file using the "Trivial Grpah Format" (TGF).
}
\examples{
\dontrun{
#Create concept map from a random graph
require("igraph")
g1 = set.vertex.attribute(erdos.renyi.game(5, 0.7, type="gnp"), "name", value=1:5)

write.tgf(conceptmap(g1), "~/cmap.tgf",
          translation = c("Node_1", "Node_2", "Node_3", "Node_4", "Node_5"))
}
}

