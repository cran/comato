\name{Hopkins.index}
\alias{Hopkins.index}
\title{Non-randomness of data}
\usage{
Hopkins.index(data)
}
\arguments{
  \item{data}{A numeric matrix.}
}
\value{
The Hopkins index as a numeric value
}
\description{
\code{Hopkins.index} calculates the Hopkins index that can
be used as an indicator of the non-randomness of data prior
to clustering.
}
\examples{
\dontrun{
#Random data generation, 10 dimensions, 500 observations, 2 clusters,
#Multivariate-Bernoulli distributed
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

Hopkins.index(data)
}
}
\seealso{
The index is described in, e.g.: Han, Jiawei; Kamber,
Micheline (2010): Data mining. Concepts and techniques. 2nd
ed., Amsterdam: Elsevier/Morgan Kaufmann (The Morgan
Kaufmann series in data management systems).
}

