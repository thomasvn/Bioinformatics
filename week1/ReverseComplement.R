# Reverse Complement Problem: Find the reverse complement of a DNA string.
# Input: A DNA string Pattern.
# Output: Pattern_rc, the reverse complement of Pattern.

library(stringr)

# Read in data
data_file <- "data/ReverseComplement.txt"
data <- read.delim(data_file, header=FALSE, sep="\n")
data <- unlist(data)
input <- strsplit(data[1], "")[[1]]
print(input)

# Define complements
# A <-> T
# G <-> C

# Take the complement of the input
complement <- c()
for (v in input) {
  if (v == "A") {
    complement <- c(complement, "T")
  } else if (v == "T") {
    complement <- c(complement, "A")
  } else if (v == "G") {
    complement <- c(complement, "C")
  } else if (v == "C") {
    complement <- c(complement, "G")
  } else {
    print("Error: invalid nucleotide in DNA string pattern" + v)
  }
}
print(complement)

# Reverse the complemented input
result <- c()
for (i in complement) {
  result <- c(i, result)
}
result <- paste(result, collapse="")
print(result)
