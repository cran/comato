\name{modify.concepts.conceptmaps}
\alias{modify.concepts.conceptmaps}
\title{Modifying the concepts of all maps of a conceptmaps object.}
\usage{
\method{modify.concepts}{conceptmaps}(x, concept.list, filter = F, ...)
}
\arguments{
  \item{x}{A conceptmaps object.}

  \item{concept.list}{A vector of strings that contains the
  list of concepts.}

  \item{filter}{If TRUE, concept maps that contain no
  propositions after the concept modification are removed
  from the result.}

  \item{...}{-}
}
\value{
A conceptmaps object that contains (possibly a subset of)
the maps of \code{maps} in which every map contains the
concepts of \code{concept.list}.
}
\description{
\code{modify.concepts} calls
\code{\link{modify.concepts.conceptmap}} for each
conceptmap object of a conceptmaps object. Therefore, all
concept maps will share the same set of concepts
afterwards.
}
\examples{
data = rbind(
 cbind("1", "Object", "Class", "is instance of"),
 cbind("1", "Object", "Attribute", "has"),
 cbind("2", "Class", "Attribute", "possesses"),
 cbind("2", "Attribute", "Data-type", "has"),
 cbind("3", "Object", "Class", "is instance of")
 )
 cms = conceptmaps(data)

 modify.concepts(cms, c("Object", "Class"), filter=TRUE)
}

