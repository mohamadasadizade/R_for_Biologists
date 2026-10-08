################################################################################

# example 1: counting mutations

################################################################################
#Compare two DNA sequences of the same length 
#and count the number of mismatches (mutations) between them


#solution: 

count_mutations <- function(seq1, seq2) {
  
  if (nchar(seq1) != nchar(seq2)) {
    cat("sequences should be the same length!")
  } else {
    
    mutation <- 0
    
    for (i in seq(1, nchar(seq1))) {
      if (substr(seq1, i,i) == substr(seq2, i,i)) {
        next
      } else {
        mutation <- mutation + 1
      }
    }
  }
  return(mutation)
}

seq1 <- "ATGCGTACGG"
seq2 <- "ATGCTAACTT"
print(count_mutations(seq1, seq2))


################################################################################

# example 1: Computing GC Content Percentage (using for and if/else)

################################################################################
#You can employ a loop-based method using nchar() and substr(), 
#or utilize functions such as strsplit() or gsub.

#solution

gc_content <- function(sequence) {
  gc_count <- 0
  seq_length <- nchar(sequence)
  
  for (i in 1:seq_length) {
    base <- substr(sequence, i, i)  # Extract each base
    if (base == "G" | base == "C") {
      gc_count <- gc_count + 1
    }
  }
  
  gc_percentage <- (gc_count / seq_length) * 100
  return(gc_percentage)
}

sequence <- "GGGGGGGGGG"
print(gc_content(sequence))