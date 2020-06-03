# An optimized version of `FrequentWords.R`

# --------------------------------------------------
# PatternToNumber

# Ex: PatternToNumber(ATGCAA)
# ATGCAA is a 6-mer
# 4^6 (4096) possible combinations of 6-mers
# Frequency Array [0 - 4095] is sorted lexicographically

# Indexing
# A --> 4^5 * 0 = 0
# T --> 4^4 * 3 = 768
# G --> 4^3 * 2 = 128
# C --> 4^2 * 1 = 16
# A --> 4^1 * 0 = 0
# A --> 4^0 * 0 = 0


# --------------------------------------------------
# NumberToPattern

# Ex: NumberToPattern(5437, 7)
# i.e. find the pattern at index 5437 for a 7-mer?
# 4^7 (16384) possible combinations of 7-mers
# Frequency Array [0 - 16383] is sorted lexicographically

# Indexing
# floor(5437 / 4^6) = 1(C) --> 5437 - 4^6 * 1 = 1341
# floor(1341 / 4^5) = 1(C) --> 1341 - 4^5 * 1 = 317
# floor(317 / 4^4)  = 1(C) --> 317 - 4^4 * 1 = 61
# floor(61 / 4^3)   = 0(A) --> 61 - 4^4 * 0 = 61
# floor(61 / 4^2)   = 3(T) --> 61 - 4^2 * 3 = 13
# floor(13 / 4^1)   = 3(T) --> 13 - 4^1 * 3 = 1
# floor(1 / 4^0)    = 1(C) --> 1 - 4^0 * 1 = 0
# PATTERN = CCCATTC

# Ex: NumberToPattern(5437, 8)
# i.e. find the pattern at index 5437 for a 8-mer?
# 4^8 (65536) possible combinations of 7-mers
# Frequency Array [0 - 65535] is sorted lexicographically

# Indexing
# floor(5437 / 4^7) = 0(C) --> 5437 - 4^7 * 0 = 5437
# floor(5437 / 4^6) = 1(C) --> 5437 - 4^6 * 1 = 1341
# floor(1341 / 4^5) = 1(C) --> 1341 - 4^5 * 1 = 317
# floor(317 / 4^4)  = 1(C) --> 317 - 4^4 * 1 = 61
# floor(61 / 4^3)   = 0(A) --> 61 - 4^4 * 0 = 61
# floor(61 / 4^2)   = 3(T) --> 61 - 4^2 * 3 = 13
# floor(13 / 4^1)   = 3(T) --> 13 - 4^1 * 3 = 1
# floor(1 / 4^0)    = 1(C) --> 1 - 4^0 * 1 = 0
# PATTERN = ACCCATTC

