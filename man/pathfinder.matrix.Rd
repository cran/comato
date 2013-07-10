\name{pathfinder.matrix}
\alias{pathfinder.matrix}
\title{Creating a Pathfinder network from a matrix}
\usage{
\method{pathfinder}{matrix}(data, q, r, ...)
}
\arguments{
  \item{data}{A non-negative weight matrix of a graph that
  can be either directed or undirected.}

  \item{q}{The parameter q used in the Pathfinder
  algorithm. The resulting graph will be q-triangular.}

  \item{r}{The parameter r used in the Pathfinder algorithm
  for the r-metric.}

  \item{...}{-}
}
\value{
A numeric weight matrix that represented the Pathfinder
graph of the input graph.
}
\description{
\code{pathfinder} creates the Pathfinder network from a
given weight matrix.
}
\examples{
#Manually create a weighted graph
data = matrix(data = 0, nrow = 6, ncol=6)
colnames(data) <- c("Object", "Class", "Method", "Attribute", "Visibility", "Algorithm")
rownames(data) <- c("Object", "Class", "Method", "Attribute", "Visibility", "Algorithm")
data["Object", "Class"] = 3
data["Object", "Method"] = 3
data["Object", "Attribute"] = 10
data["Object", "Visibility"] = Inf
data["Object", "Algorithm"] = 9
data["Class", "Method"] = 7
data["Class", "Attribute"] = 6
data["Class", "Visibility"] = 8
data["Class", "Algorithm"] = 10
data["Method", "Attribute"] = 4
data["Method", "Visibility"] = 9
data["Method", "Algorithm"] = 3
data["Attribute", "Visibility"] = 5
data["Attribute", "Algorithm"] = 10
data["Visibility", "Algorithm"] = Inf

data = data + t(data)

#Run the Pathfinder algorithm with several different parameters
pathfinder(data, 5, 1)
pathfinder(data, 2, 1)
pathfinder(data, 5,Inf)
pathfinder(data, 2, Inf)
}
\seealso{
The Pathfinder algorithm is implemented based on the
description in: Dearholt, Donald W.; Schvaneveldt, Roger W.
(1990): Properties of Pathfinder Netowrks. In: Roger W.
Schvaneveldt (Hg.): Pathfinder associative networks.
Studies in knowledge organizations. Norwood, N.J: Ablex
Pub. Corp., S. 1-30.
}

