\name{read.tgf}
\alias{read.tgf}
\title{Importing a concept map from a TGF file.}
\usage{
read.tgf(file, strip = TRUE)
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
\code{read.tgf} reads a TGF file and imports the graph as a
conceptmap object.
}
\examples{
\dontrun{
#Assuming that the data is in "~/cmap.tgf"
cm = read.tgf("~/cmap.tgf")
}
}

