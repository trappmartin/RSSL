context("Laplacian SVM")

data(testdata)
modelform <- testdata$modelform
classname<-all.vars(modelform)[1] 
D <- testdata$D
D_test <- testdata$D_test
X <- testdata$X
X_u <- testdata$X_u
y <- testdata$y
X_test <- testdata$X_test
y_test <- testdata$y_test

test_that("Kernel and Linear give same result: 2 class", {
  g_df <- LaplacianSVM(modelform,D)
  g_mat <- LaplacianSVM(X,y,X_u)
  
  expect_equal(decisionvalues(g_mat,X_test),  decisionvalues(g_df,D_test))
  expect_equal(loss(g_mat,X_test,y_test),  loss(g_df,D_test))
})


test_that("LaplacianSVM is the same as SVM when manifold term has weight 0", {
  g_lap <- LaplacianSVM(X,y,X_u,gamma=0,lambda=0.05,scale=FALSE)
  g_svm <- SVM(X,y,C=1,scale=FALSE)
  
  expect_equal(decisionvalues(g_lap,X_test),  decisionvalues(g_svm,X_test),tolerance=10e-3)
})