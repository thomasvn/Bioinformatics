# Code Challenge: Solve the Frequent Words Problem.
# Input: A string Text and an integer k.
# Output: All most frequent k-mers in Text.

library(stringr)

# Read in data, and parse for the text and pattern
data_file <- "data/FrequentWords.txt"
data <- read.delim(data_file, header=FALSE, sep="\n")
data <- unlist(data)
text <- data[1]
k <- as.numeric(data[2])

# Iterate through all substrings from the text
# Check frequency of each substring
# Find highest frequency
start <- 1
end <- nchar(text) - k
highest <- 0
for (i in start:end) {
  pattern <- substr(text, i, i + k - 1)
  pattern_regex <- str_c("(?=", pattern, ")")

  count <- str_count(text, pattern=pattern_regex)
  if (count > highest) {
    highest <- count
  }
}

# Iterate through all substrings from the text
# Save all substrings of highest frequency
start <- 1
end <- nchar(text) - k
result <- c()
len <- 1
for (i in start:end) {
  pattern <- substr(text, i, i + k - 1)
  pattern_regex <- str_c("(?=", pattern, ")")
  
  count <- str_count(text, pattern=pattern_regex)
  if (count == highest) {
    if (!(pattern %in% result)) {
      result[len] <- pattern
      len <- len + 1
    }
  }
}

# Final result
result
