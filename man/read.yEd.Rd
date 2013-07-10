\name{read.yEd}
\alias{read.yEd}
\title{Importing a concept map from a GraphML file.}
\usage{
read.yEd(file, strip = TRUE)
}
\arguments{
  \item{file}{The filename and path that should be read.}

  \item{strip}{Passed to the call of
  \code{\link{conceptmap.igraph}} that is used to create
  the conceptmap object.}
}
\value{
A conceptmap object.
}
\description{
\code{read.yEd} reads a graphML file that was created by
yEd and imports the graph as a conceptmap object.
}
\examples{
\dontrun{
#Assuming that the data is in "~/cmap.graphml"
cm = read.yEd("~/cmap.graphml")
}
}

