# Code Challenge: Implement PatternCount (reproduced below).
# Input: Strings Text and Pattern.
# Output: Count(Text, Pattern).

# PatternCount(Text, Pattern)
#   count ← 0
#   for i ← 0 to |Text| − |Pattern|
#     if Text(i, |Pattern|) = Pattern
#       count ← count + 1
#     return count

library(stringr)

# Read in data, and parse for the text and pattern
data_file <- "data/PatternCount.txt"
data <- read.delim(data_file, header=FALSE, sep="\n")
data <- unlist(data)
data_text <- data[1]
data_pattern <- data[2]

# Count the number of times the pattern shows up in the text
# Regex performs lookahead assertions
data_pattern <- str_c("(?=", data_pattern, ")")
str_count(data_text, pattern=data_pattern)

