nearest_classifier <- function(x = x , y = y) {
    classifier <- list(name = "K-Nearest Classifier" , X = x , Y = y)
    class(classifier) <- "knn"
    return(classifier)
}

predict.knn <- function(knn , x ) {
    assertthat::assert_that(nrow(knn$X) == nrow(x))
    distances <- c()
    n <- nrow(x)
    for(i in 1:n) {
        distance <- euclidean(knn$X[i,] , x[i,])
        distances <- append(distances , distance)
    }
    results <- smallest(distances , 3)
    print(distances , results)
}
smallest <- function(l , k) {
    return(head(sort(unlist(data)) , k))
}

print.knn <- function(knn ,  ...) {
    cat("K-Nearest Neighbors Classifier\n")
}
score.knn <- function(knn , x , y) {
    cat("This is the scoring function\n")
}
euclidean <- function(x , y) {
    assertthat::assert_that(ncol(x) == ncol(y))
    n <- ncol(x)
    distance <- 0
    for(i in  1:n) {
        diff <- x[i] - y[i]
        diff <- diff^2
        distance <- distance + diff
    }
    return(sqrt(distance))
}





