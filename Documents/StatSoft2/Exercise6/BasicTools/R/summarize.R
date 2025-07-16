# This function is for summarizing numeric values


#' Summary Table of Numeric Variables
#'
#' Returns a summary statistics table (mean, median, sd, min, max) for numeric columns.
#'
#' @param data A data frame.
#' @return A data frame of summary statistics.
#' @export
#' @examples
#' summary_table(mtcars)
summary_table <- function(data) {
  num_data <- data[sapply(data, is.numeric)]
  result <- data.frame(
    Variable = names(num_data),
    Mean = sapply(num_data, mean, na.rm = TRUE),
    Median = sapply(num_data, median, na.rm = TRUE),
    SD = sapply(num_data, sd, na.rm = TRUE),
    Min = sapply(num_data, min, na.rm = TRUE),
    Max = sapply(num_data, max, na.rm = TRUE)
  )
  return(result)
}
