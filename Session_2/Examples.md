## **Example 1: Counting Mutations Between Two DNA Sequences**

**Concepts Used:**  
Loops and `if/else`.

**Problem Statement:**  
Compare two DNA sequences of the same length and count the number of mismatches (mutations) between them.

**Hints**
- How will you ensure the two sequences have the same length before comparing them?
- How can you loop through each character position in the sequences?
- What condition will you check to identify a mismatch between the characters?
- substr() to extract a specific character by its position.
- nchar() to check the sequence length.




```python
count_mutations <- function(seq1, seq2) {
  if (nchar(seq1) != nchar(seq2)) {
    return("Sequences must be of the same length")
  } else
  {
  mutations <- 0
  for (i in 1:nchar(seq1)) {
    if (substr(seq1, i, i) != substr(seq2, i, i)) {
      mutations <- mutations + 1
    }
  }

  return(mutations)
  }

}

seq1 <- "ATGCGTAC"
seq2 <- "ATGCTTAC"
print(count_mutations(seq1, seq2))

```

    [1] 1


## **Example 2:  Computing GC Content Percentage**

**Concepts Used:**  
Math, functions.

**Problem Statement:**  
Calculate the GC content (percentage of G and C bases) in a DNA sequence.


**Hints**

You can employ a loop-based method using `nchar()` and `substr()`, **or** utilize functions such as `strsplit()` or `gsub`.





### **loop-based** aproach


```python
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

sequence <- "ATGCGATCGGAT"
print(gc_content(sequence))
```

    [1] 50


### Using **gsub**



```
gsub(pattern, replacement, x)
```



```pattern ``` The pattern you want to search for (can be a regular expression).



``` replacement ``` The string to replace the matched pattern.

``` x ``` The text the replacement is applied.









```python
#Replace All Matches

string <- "ATGCG-ATC-GGAT"
result <- gsub("-", "X", string)
print(result)
```

    [1] "ATGCGXATCXGGAT"



```python
#Remove Characters

sequence <- "ATG5CG*A$T12C"
cleaned_sequence <- gsub("[^ATGC]", "", sequence)
print(cleaned_sequence)
```

    [1] "ATGCGATC"



```python
#Replace Entire Words

string <- "DNA is composed of nucleic acids"
result <- gsub("\\bDNA\\b", "RNA", string)  # \\b marks the word
print(result)
```

    [1] "RNA is composed of nucleic acids"



```python
gc_content <- function(sequence) {
  gc_count <- nchar(gsub("[^GC]", "", sequence))
  # or use gsub("[AT]", "", sequence)
  seq_length <- nchar(sequence)

  gc_percentage <- (gc_count / seq_length) * 100
  return(gc_percentage)
}


sequence <- "ATGCGATCGGAT"
print(gc_content(sequence))

```

    [1] 50


## **Example 3: Calculating DNA Melting Temperature**

**Concepts Used:**  
Math, `if/else`, and functions.

**Problem Statement:**  
Calculate the melting temperature (\(T_m\)) of a DNA sequence using the following formula:

- If the DNA sequence length is less than or equal to 14, use the formula:
$$T_m = 2 \times (\text{number of A/T}) + 4 \times (\text{number of G/C})$$


- Otherwise, use:
$$T_m = 64.9 + 41 \times \frac{(\text{number of G/C} - 16.4)}{\text{length of sequence}}$$





```python
calculate_tm <- function(sequence) {
  at_count <- nchar(gsub("[^AT]", "", sequence))
  gc_count <- nchar(gsub("[^GC]", "", sequence))
  seq_length <- nchar(sequence)

  if (seq_length <= 14) {
    tm <- 2 * at_count + 4 * gc_count
  } else {
    tm <- 64.9 + 41 * (gc_count - 16.4) / seq_length
  }

  return(tm)
}


sequence <- "ATGCGATCGGAT"
print(calculate_tm(sequence))

```

    [1] 36

