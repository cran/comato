\name{read.folder.yEd}
\alias{read.folder.yEd}
\title{Importing a set of concept maps from GraphML files.}
\usage{
read.folder.yEd(folder, strip = TRUE)
}
\arguments{
  \item{folder}{The path of a folder in which every graphML
  file is read.}

  \item{strip}{Passed to the call of \code{\link{read.yEd}}
  that is used to import the single concept maps.}
}
\value{
A list consisting of a conceptmaps object and the list of
filenames (in the same order as the maps in the conceptmaps
object).
}
\description{
\code{read.folder.yEd} reads several graphML files that
were created by yEd and imports them as a conceptmaps
object.
}
\examples{
\dontrun{
#Assuming that the data is in the folder "~/cmaps"
cm = read.folder.yEd("~/cmaps")
}
}

