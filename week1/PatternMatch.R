# Code Challenge: Solve the Pattern Matching Problem.
# Input: Two strings, Pattern and Genome.
# Output: A collection of space-separated integers specifying all starting positions where Pattern appears as a substring of Genome.

library(stringr)

# Read in data
data_file <- "data/PatternMatch.txt"
data <- read.delim(data_file, header=FALSE, sep="\n")
data <- unlist(data)
pattern <- data[1]
genome <- data[2]

# Find all matches of the pattern
pattern <- str_c("(?=", pattern, ")")
result <- str_locate_all(genome, pattern)[[1]]
result <- result - 1  # different indexing
result[,1]
