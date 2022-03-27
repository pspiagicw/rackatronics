#' Predict Generic Function
#' This declares a generic function `predict`
#' @export
## predict <- function(obj) {
##     UseMethod("predict")
## }
## predict.default <- function(obj) {
##     cat("Generic predict function\n")
## }

score <- function(obj) {
    UseMethod("score")
}
score.default <- function(obj) {
    cat("Generic score function\n")
}
fit <- function(obj) {
    UseMethod("fit")
}
fit.default <- function(obj) {
    cat("Generic fit function\n")
}

