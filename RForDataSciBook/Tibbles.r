# A tibble is a simpler version of a data frame, they do less than a data.frame they cant change-
# the variable name, types or do partial matching. This leads to cleaner more expressive code
# Due to their expressive clean nature, they are preferred for larger data sets

library(tibble)
data <- data.frame(a = 1:3, b = letters[1:3], c = Sys.Date() - 1:3)

dataTibble <- data %>% as_tibble(.name_repair = "unique")
# Tibbles can also be used to represent vectors, a common method is to use vector recycling to cleanly represent vast data -
# But this sometimes fall into issues with dimenionsality when representing some vectors such as:


# We need to use the repetition function to genertate the same size of numbers as the first columns in the tibble
vectorTibble <- tibble(x = 1:4, y = rep(1:2, 2))
print(vectorTibble)