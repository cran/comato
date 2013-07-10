\name{read.folder.tgf}
\alias{read.folder.tgf}
\title{Importing a set of concept maps from TGF files.}
\usage{
read.folder.tgf(folder, strip = TRUE)
}
\arguments{
  \item{folder}{The path of a folder in which every TGF
  file is read.}

  \item{strip}{Passed to the call of \code{\link{read.tgf}}
  that is used to import the single concept maps.}
}
\value{
A list consisting of a conceptmaps object and the list of
filenames (in the same order as the maps in the conceptmaps
object).
}
\description{
\code{read.folder.tgf} reads several TGF files and imports
them as a conceptmaps object.
}
\examples{
\dontrun{
#Assuming that the data is in the folder "~/cmaps"
cm = read.folder.tgf("~/cmaps")
}
}

