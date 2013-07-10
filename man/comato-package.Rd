\name{comato-package}
\alias{comato-package}
\alias{comato}
\docType{package}
\encoding{utf8}
\title{
CoMaTo - Analyzing concept maps
}
\description{
CoMaTo allows importing and analyzing concept map data in R.
}
\details{
\tabular{ll}{
Package: \tab comato\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-03-11\cr
License: \tab GPLv3 \cr
}

The package is based upon two main classes: \code{conceptmap} which encompasses a single concept map and \code{conceptmaps} which encompasses a set of concept maps. Several analysis methods of the (mostly) the structural information are implemented for concept maps. Furthermore, the data of a set of concept maps can be aggregated in different ways and analysed.
Especially, cluster analysis and Pathfinder analysis of the data is implemented.

Concept maps can be imported and constructed from several formats.
}
\author{
Andreas Mühling <andreas.muehling@tum.de>
}
\references{
CoMaTo and the analysis methods implemented in the package are described in:

Mühling, Andreas (2014): Investigating Knowledge Structures in Computer Science Education. PhD Thesis. Technische Universität München, München. Institut für Informatik.
}
\keyword{ package }
\seealso{
CoMaTo is using, among others, the \code{\link[igraph:igraph-package]{igraph}} package for internal representation of concept maps.
}
\examples{
\dontrun{
# Assuming that concept map data is stored in TGF files in the folder "~/maps".
maps = read.folder.tgf("~/maps")[[1]]

#  Create a Pathfinder network from the aggregated map data
pf = pathfinder(maps, threshold=10)   

#  Use cluster analysis on the graph similarity matrix of the aggregated data
clusting = clustering(maps, method="PAM")  

#  Plot the first map of the set of concept maps
plot(maps$maps[[1]]) 

#  Analyze several basic graph measures of the first concept map
analyze.graph.measures(maps$maps[[1]])  
}
}
