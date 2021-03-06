#' @include Generics.R

#' Classifier class
#'
#' Top level classifier class
setClass("Classifier",
         representation(name="character",
                        modelform="ANY",
                        classname="ANY",
                        classnames="ANY",
                        scaling="ANY"),
         prototype(modelform=NULL, classname=NULL, classnames=NULL,scaling=NULL)
)

#' Show the contents of a classifier
#' @rdname rssl-formatting
#' @aliases show,Classifier-method
setMethod("show", signature(object="Classifier"), function(object) {
  cat(object@name,"\n")
  cat("Classnames:\n",object@classnames,"\n")
})

setClass("LinearClassifier",
         representation(w="ANY"),
         prototype(w=NULL)
)

#' Classifier used for enabling shared documenting of parameters
#' @param X matrix; Design matrix for labeled data
#' @param y factor or integer vector; Label vector
#' @param X_u matrix; Design matrix for unlabeled data
#' @param verbose logical; Controls the verbosity of the output
#' @param scale boolean; Should the features be normalized? (default: FALSE)
#' @param eps numeric; Stopping criterion for the maximinimization
#' @param x_center logical;  Should the features be centered?
#' @param intercept logical; Whether an intercept should be included
#' @param lambda numeric; L2 regularization parameter
#' @param y_scale logical; whether the target vector should be centered
#' @param kernel kernlab::kernel to use
#' @param ... Not used
#' @export
BaseClassifier <- function(X,y,X_u,verbose,scale,eps,x_center,intercept,lambda,y_scale,kernel,...) {}
