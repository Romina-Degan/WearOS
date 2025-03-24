# There are two type of vectors in R, atomic and lists. Lists can be called recursive vectors since they can contain-
# lists in other lists, they can also contain atomic vectors. Atomic vectors can represent, logical, integer, double-
# Character and complex types.  The main difference between the two of them is that atomic vectors are homogenous -
# While lists can be heterogenous. Atomic can only represent the same strcutures, while lists are versatile in their representation

library(tidyverse)
#The following is an example of an atomic vector
print(typeof(letters))
print(typeof(1:10))

# The following is an example of a list vector
x <- list("a", "b", "c")

# Vectors are important in that they can provide meta data to the vectors in the form of attributes, these attributes are used to create-
# augmented vectors which can build on additional behaviour
# The types of augmented vectors are as follows:
# - Factors, these are built on top of numeric vectors
# - Dates and date-times are built on top of lists
# - Data frames and tibbles are built on top of lists
# Check tibble file for some discussion on tibbles and vectors

# Vectors can also be subsetted to extract specific items in the vector

x <- c("one", "two", "three", "four", "five")
y <- x[c(3, 2, 5)]
# If you wish to drop elements you can use negatives like (-3,-2,-5) but you cant mix the positive and negative values 