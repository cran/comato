\name{merge.conceptmaps}
\alias{merge.conceptmaps}
\title{Unify sets of conceptmaps}
\usage{
\method{merge}{conceptmaps}(x, y, ...)
}
\arguments{
  \item{x}{A conceptmaps object.}

  \item{y}{A conceptmaps object.}

  \item{...}{-}
}
\value{
A conceptmaps object that consist of the maps of \code{x}
and \code{y}.
}
\description{
\code{merge} takes two conceptsmaps objects and merges the
underyling sets of conceptmaps.
}
\examples{
data = rbind(
 cbind("1", "Object", "Class", "is instance of"),
 cbind("1", "Object", "Attribute", "has"),
 cbind("2", "Class", "Attribute", "possesses"),
 cbind("2", "Attribute", "Data-type", "has"),
 cbind("3", "Object", "Class", "is instance of")
 )
 cm1 = conceptmaps(data[1:2,])
 cm2 = conceptmaps(data[3:5,])
 merge(cm1, cm2)
}

