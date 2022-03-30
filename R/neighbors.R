#' Simple Nearest Neighbors Classifier
#' It returns a classifier configured to classify
#' @param x Data points(Features of the data)
#' @param y Labels of the data
#' @keywords nearest neighbors
#' @export
nearest_classifier <- function() {
    classifier <- list(name = "K-Nearest Classifier")
    class(classifier) <- "knn"
    return(classifier)
}

#' Predicts a data point
#'
#' @param obj The model
#' @param x The data points to predict
#' @method predict knn
#' @export
predict.knn <- function(knn , x ) {
    cat("To predict" , x)
}

#' Prints the model
#'
#' @param obj The model
#' @method print knn
#' @export
print.knn <- function(knn ,  ...) {
    cat("This is a KNN")
}
#' Fits the data
#'
#' @param X The features of the data
#' @param Y The labels of the data
#' @method fit knn
#' @export
fit.knn <- function(knn , X , Y ) {
    data <- list(X = X , Y = Y)
    knn <- append(knn , data)
    return(knn)
}


