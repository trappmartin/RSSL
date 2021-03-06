% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Generics.R, R/LeastSquaresClassifier.R, R/NormalBasedClassifier.R, R/LogisticRegression.R, R/KernelLeastSquaresClassifier.R, R/LinearSVM.R, R/LogisticLossClassifier.R, R/MajorityClassClassifier.R, R/SVM.R, R/SVMlin_binary.R, R/SelfLearning.R, R/TSVMuniversum.R, R/USMLeastSquaresClassifier.R, R/svmlin.R
\docType{methods}
\name{loss}
\alias{loss}
\alias{loss,KernelLeastSquaresClassifier-method}
\alias{loss,LeastSquaresClassifier-method}
\alias{loss,LinearSVM-method}
\alias{loss,LogisticLossClassifier-method}
\alias{loss,LogisticRegression-method}
\alias{loss,MajorityClassClassifier-method}
\alias{loss,NormalBasedClassifier-method}
\alias{loss,SVM-method}
\alias{loss,SVMlin-method}
\alias{loss,SelfLearning-method}
\alias{loss,TSVMuniversvm-method}
\alias{loss,USMLeastSquaresClassifier-method}
\alias{loss,svmlinClassifier-method}
\title{Loss of a classifier or regression function}
\usage{
loss(object, ...)

\S4method{loss}{LeastSquaresClassifier}(object, newdata, y = NULL, ...)

\S4method{loss}{NormalBasedClassifier}(object, newdata, y = NULL)

\S4method{loss}{LogisticRegression}(object, newdata, y = NULL)

\S4method{loss}{KernelLeastSquaresClassifier}(object, newdata, y = NULL, ...)

\S4method{loss}{LinearSVM}(object, newdata, y = NULL)

\S4method{loss}{LogisticLossClassifier}(object, newdata, y = NULL, ...)

\S4method{loss}{MajorityClassClassifier}(object, newdata, y = NULL)

\S4method{loss}{SVM}(object, newdata, y = NULL)

\S4method{loss}{SVMlin}(object, newdata, y = NULL)

\S4method{loss}{SelfLearning}(object, newdata, y = NULL, ...)

\S4method{loss}{TSVMuniversvm}(object, newdata, y = NULL)

\S4method{loss}{USMLeastSquaresClassifier}(object, newdata, y = NULL, ...)

\S4method{loss}{svmlinClassifier}(object, newdata, y = NULL)
}
\arguments{
\item{object}{Classifier; Trained Classifier}

\item{...}{additional parameters}

\item{newdata}{data.frame; object with test data}

\item{y}{factor; True classes of the test data}
}
\value{
numeric; the total loss on the test data
}
\description{
Loss of a classifier or regression function

Return the MINUS log likelihood on the given dataset

Hinge loss on new objects of a trained LinearSVM

Hinge loss on new objects of a trained SVM

Loss method for SelfLearning Classifier
The loss method delegates prediction to the specific model object
}

