% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GRFClassifier.R
\name{GRFClassifier}
\alias{GRFClassifier}
\title{Gaussian Random Fields and Harmonic functions}
\usage{
GRFClassifier(X, y, X_u, adjacency_kernel = NULL, sigma = 0.1, eta = 0.1,
  CMN = TRUE, scale = FALSE, x_center = FALSE, y_u = NULL)
}
\arguments{
\item{X}{matrix; Design matrix for labeled data}

\item{y}{factor or integer vector; Label vector}

\item{X_u}{matrix; Design matrix for unlabeled data}

\item{adjacency_kernel}{kernlab::kernel; kernel object}

\item{sigma}{parameter for kernel if no kernel is given}

\item{eta}{The influence of the external classifier (not currently used)}

\item{CMN}{Should the Class Mass Normalization heuristic be applied? (default: TRUE)}

\item{scale}{boolean; Should the features be normalized? (default: FALSE)}

\item{x_center}{logical;  Should the features be centered?}

\item{y_u}{Labels given by external classifier (Not used)}
}
\description{
Gaussian Random Fields and Harmonic functions
}
\examples{
library(ggplot2)
library(kernlab)

testdata <- generateTwoCircles(200,noise=0.1)
testdata[-sample(1:nrow(testdata),10),]$Class <- NA
tvec<-na.omit(testdata$Class)
dmatU <- as.matrix(testdata[is.na(testdata$Class),1:2])
dmat <- as.matrix(testdata[!is.na(testdata$Class),1:2])

classifier <- GRFClassifier(dmat, tvec, dmatU, 
                adjacency_kernel = rbfdot(10))

plotframe <- data.frame(dmatU, 
                        Output=classifier@responsibilities)

ggplot(plotframe,aes(x=X1,y=X2,color=Output)) +
  geom_point() + coord_equal()
}

