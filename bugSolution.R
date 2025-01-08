```R
# Corrected function to handle all-NA vectors
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vectors
  }
  if (all(is.na(x))) {
    return(NA) # Handle vectors with all NAs
  }
  sum_x <- sum(x, na.rm = TRUE)  # Sum the vector, removing NAs
  mean_x <- sum_x / length(x[!is.na(x)]) #Calculate the mean using only non-NA values
  return(mean_x)
}

# Example usage:
my_vector <- c(1, 2, 3, NA, 5)
result <- calculate_mean_corrected(my_vector)
print(result) # Correct Result

my_vector_all_na <- c(NA, NA, NA)
result_all_na <- calculate_mean_corrected(my_vector_all_na)
print(result_all_na) # Correctly returns NA
```