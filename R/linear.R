
#'@export
linear_regressor <- function() {
    model <- list(name = "Linear Regressor")
    class(model) <- "linear_regressor"
    return(model)
}


#' Generic Print Function for Linear Regressor
#' @export
print.linear_regressor <- function(x) {
    cat("Linear Regressor \n")
}

#' 
#'@export
fit.linear_regressor <- function(obj, x , y , ...) {
    ## obj <- list(name = "Linear Regressor" , x = x , y = y)
    n <- ncol(x)
    means <- c()
    mean_y <- mean(y)
    for(i in 1:n) {
        means <- append(means , mean(x[,i]))
    }
    return(means)

    coefs <- c()
    for(i in 1:n) {
        sum_xy <- 0
        sum_x2 <- 0

        rows <- nrow(x)
        for(j in 1:rows) {
            row <- x[j,]
            sum_xy <- sum_xy + (x[i,j] - means[i]) * (y[i] - mean_y)
            sum_x2 <- sum_x2 + (x[i,j] - means[i]) ^ 2
        }

        coefs <- append(coefs , sum_xy / sum_x2)
    }

    sum <- 0
    for(i in 1:ncol(x)) {
        sum <- sum + coefs[i] * means[i]
    }
    intercept <- mean_y - sum
}

#'@export
predict.linear_regressor <- function(obj , x  , ...) {
    n <- ncol(x)
    predictions <- c()
    for(i in 1:nrow(x)) {
        sum <- 0 
        for(j in 1:ncol(x)) {
            sum <- sum + obj$coefs[j] * x[i,j]
        }
        sum <- sum + obj$intercept
        predictions <- append(predictions , sum)
    }
    return(predictions)
}
