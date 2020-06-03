# Exercise Break: Return a space-separated list of starting positions (in increasing order) where CTTGATCAT appears as a substring in the Vibrio cholerae genome.

library(stringr)

# Read in data
data_file <- "data/Vibrio-Cholerae-Genome.txt"
data <- read.delim(data_file, header=FALSE, sep="\n")
data <- unlist(data)
genome <- data[1]

# Find all matches of the pattern
pattern <- "CTTGATCAT"
pattern <- str_c("(?=", pattern, ")")
result <- str_locate_all(genome, pattern)[[1]]
result <- result - 1  # different indexing
result[,1]
