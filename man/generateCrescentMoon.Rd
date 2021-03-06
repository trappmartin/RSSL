% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GenerateSSLData.R
\name{generateCrescentMoon}
\alias{generateCrescentMoon}
\title{Generate Crescent Moon dataset}
\usage{
generateCrescentMoon(n = 100, d = 2, sigma = 1)
}
\arguments{
\item{n}{Number of objects to generate}

\item{d}{Dimensionality of the dataset}

\item{sigma}{Noise added}
}
\description{
Generate Crescent Moon dataset
}
\examples{
data<-generateCrescentMoon(150,2,1)
plot(data$X1,data$X2,col=data$Class,asp=1)
}

