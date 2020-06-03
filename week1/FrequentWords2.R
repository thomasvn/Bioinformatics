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
# 4^6 * ? --> 4^6 * 1(C) = 4096
# 4^5 * ? --> 4^5 * 1(C) = 1024
# 4^4 * ? --> 4^4 * 1(C) = 256
# 4^3 * ? --> 4^3 * 0(A) = 0
# 4^2 * ? --> 4^2 * 3(T) = 48
# 4^1 * ? --> 4^1 * 3(T) = 12
# 4^0 * ? --> 4^0 * 1(C) = 1
# TOTAL -----------------> 5437
# PATTERN = CCCATTC

# Ex: NumberToPattern(5437, 8)
# i.e. find the pattern at index 5437 for a 8-mer?
# 4^8 (65536) possible combinations of 7-mers
# Frequency Array [0 - 65535] is sorted lexicographically

# Indexing
# 4^7 * ? --> 4^7 * 0(A) = 0
# 4^6 * ? --> 4^6 * 1(C) = 4096
# 4^5 * ? --> 4^5 * 1(C) = 1024
# 4^4 * ? --> 4^4 * 1(C) = 256
# 4^3 * ? --> 4^3 * 0(A) = 0
# 4^2 * ? --> 4^2 * 3(T) = 48
# 4^1 * ? --> 4^1 * 3(T) = 12
# 4^0 * ? --> 4^0 * 1(C) = 1
# TOTAL -----------------> 5437
# PATTERN = ACCCATTC

