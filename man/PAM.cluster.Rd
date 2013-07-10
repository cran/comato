\name{PAM.cluster}
\alias{PAM.cluster}
\title{Similarity based clustering}
\usage{
PAM.cluster(data, min = 2, max = 10, metric = "manhattan")
}
\arguments{
  \item{data}{A numeric matrix.}

  \item{min}{The minimal number of components that is
  tested. Must be at least 2.}

  \item{max}{The maximal number of components that is
  tested.}

  \item{metric}{If empty, data will be treated as a
  distance matrix. Otherwise, the value will be passed to
  the call of \code{dist} to compute the distance matrix
  from \code{data}}
}
\value{
A list with 3 elements. The first element contains the
optimal number of components according to the G1 index. The
second element contains a vector of the G1 values. The
thrid element contains the clustering itself, i.e. the
return value of \code{PAM}.
}
\description{
\code{PAM.cluster} calculates a clustering using the PAM
algorithm (k-medoids). The quality of the clustering is
judged using the G1 index.
}
\examples{
\dontrun{
#Random data generation, 10 dimensions, 500 observations, 2 clusters
require("gtools")
data = c()
p = 0.0
for (i in 1:2)
{
temp = c()
for (j in 1:10)
temp = cbind(temp, rbinom(250, 1, p+(i-1)*0.5+(0.025*i)*j))
data=rbind(data, temp)
}
data = data[permute(1:500),]

PAM.cluster(data)
}
}

