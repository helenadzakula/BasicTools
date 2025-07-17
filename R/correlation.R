#' Correlation Matrix
#'
#' Computes the correlation matrix of all numeric columns in a data frame.
#'
#' @param data A data frame
#' @return A correlation matrix
#' @importFrom stats cor
#' @export
#' @examples
#' # cor_matrix(mtcars)
cor_matrix <- function(data) {
  num_data <- data[sapply(data, is.numeric)]
  return(cor(num_data, use = "complete.obs"))
}
