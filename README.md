# Subtle Mean Calculation Error in R: Handling All-NA Vectors

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector. The function aims to handle empty vectors and NA values gracefully.  However, it fails when all values in the input vector are NA. This bug is difficult to catch because it only surfaces under specific conditions. 

The `bug.R` file contains the erroneous function. The `bugSolution.R` file presents the corrected version.

## Bug Description
The function `calculate_mean()` correctly handles empty vectors and vectors containing some NA values.  It calculates the sum of the non-NA elements and divides by the number of non-NA elements.  However, when the input vector `x` consists entirely of NA values, `length(x)` is non-zero, but `sum(x, na.rm = TRUE)` is 0, leading to incorrect results.  Specifically, it gives a mean of 0, instead of returning NA as it should.

## Solution
The solution involves a more robust check to explicitly handle the case where all values are NA.