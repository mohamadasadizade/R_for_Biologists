################################################################################

# 1. Desision making

################################################################################

#In many situations, you need to make a decision based on a condition. 
#For that, you can use the if statement.

#when the condition of an if statement is FALSE, you can use an else statement.

#In case you need multiple checks, you can use multiple else if statements.

x <- 24 

if (x > 10) {
  print("x is greater than 10")
} else {
  prinnt("x is less than 10")
}

#parentheses: the condition
#within curly braces: code block: executed if the condition was true


num <- 3 

if (num == 1) {
  print("one")
} else if (num == 2) {
  print("two")
} else if (num == 3) {
  print("three")
} else {
  print("something else!")
}


################################################################################

# 2. Logical operators

################################################################################

# Logical operators allow you to combine multiple conditions
# The logical & (AND) operator returns TRUE only if both conditions are TRUE.
# the logical | (OR) operator returns TRUE if any one of its conditions is TRUE.
# The logical ! (NOT) operator returns the opposite of the given condition.

#& (AND) operator
x <- 6 
y <- 4

if (x>y & x<10) {
  print("yes!")
}


# | (OR) operator
x <- 6
y <- 2
if(x>y | x > 100) {
  print("Yes")
}


print(!((15 > 4) & (8 < 9)) | (4 > 6))

################################################################################

# 3. Loop

################################################################################

#Loops allow you to repeat a block of code until a given condition is TRUE.

#Each time the computer runs through a loop, it's referred to as an iteration.


#while loop
i <- 1 
while (i <= 10) {
  print(i)
  i = i + 1
}

#for loop
for (i in 1:10) {
  print(i)
}


#The break statement allows you to stop a loop
i <- 8
while (i > 0) {
  print(i)
  i = i -1 
  if (i == 4) {
    break
  }
}


#The next statements allows you to skip an iteration
for (i in 1:15) {
  if (i == 13) {
    next
  }
  print(i)
}


#codon extraction:
dna <- "ATCGCTCACATCGCGCAATCGCA"
for (nuc in seq(3, nchar(dna), by=3)) {
     cat(substr(dna, nuc, nuc+2),"\n")
}

codon_extraction <- function(sequence) {
  for (nuc in seq(3, nchar(sequence), by=3)) {
    cat(substr(dna, nuc, nuc+2),"\n")
  }
}

codon_extraction(dna)
  
#non-standard nucleic acid detection: 
dna <- "ATCGCGXGATGATGCTCGTAGTG"
for (nuc in seq(1, nchar(dna))) {
  if (substr(dna, nuc,nuc) == "A" | 
      substr(dna, nuc,nuc) == "T" | 
      substr(dna, nuc,nuc) == "C" | 
      substr(dna, nuc,nuc) == "G") {
    next
  } else {
    cat("a non-standard nucleotide has been detected in position", 
        nuc,":",substr(dna, nuc,nuc), "\n")
  }
}

dna_qc <- function(sequence) {
  for (nuc in seq(1, nchar(sequence))) {
    if (substr(sequence, nuc,nuc) == "A" | 
        substr(sequence, nuc,nuc) == "T" | 
        substr(sequence, nuc,nuc) == "C" | 
        substr(sequence, nuc,nuc) == "G") {
      next
    } else {
      cat("a non-standard nucleotide has been detected in position", 
          nuc,":",substr(sequence, nuc,nuc), "\n")
    }
  }
  
}

dna_qc(dna)
dna_qc("ATCGACAGACAGCAATACAYTAC")


################################################################################

# 4. Function

################################################################################
#A function is a block of code that can be called using its name.
#A function can also take parameters as input and return values.
#R has many built-in functions. We have seen some of them before.
#Parameters are passed into functions inside parentheses.
#Functions can have multiple parameters, separated by commas.

sumation <- function(input1, input2) {
  output = input1 + input2
  return(output)
}
sumation(2, 3)


chick <- function(x, y) {
  return(x ^ y)
}

chick(2,chick(2,chick(2,1)))


#Translating DNA seq to Protein seq just by if/else and for loop.

dna_seq <- "ATGGTGCTATTAGTG"


translate_dna <- function(dna_seq) {
  protein_seq <- ""
  
  for (i in seq(1, nchar(dna_seq), by = 3)) {
    codon <- substr(dna_seq, i, i + 2)  # Extract the codon (3 nucleotides)
    
    if (codon == "ATA" | codon == "ATC" | codon == "ATT") {
      aa <- "I"   # Isoleucine
    } else if (codon == "ATG") {
      aa <- "M"   # Methionine (Start codon)
    } else if (codon == "GTT" | codon == "GTC" | codon == "GTA" | codon == "GTG") {
      aa <- "V"   # Valine
    } else if (codon == "TTA" | codon == "TTG" | codon == "CTT" | codon == "CTC" | codon == "CTA" | codon == "CTG") {
      aa <- "L"   # Leucine
    } else if (codon == "TAA" | codon == "TAG" | codon == "TGA") {
      aa <- "*"   # Stop codon
    } else if (codon == "GCT" | codon == "GCC" | codon == "GCA" | codon == "GCG") {
      aa <- "A"   # Alanine
    } else {
      aa <- "?"   # Unknown codon
    }
    
    protein_seq <- paste0(protein_seq, aa)
    
    if (aa == "*") {
      break
    }
  }
  
  return(protein_seq)
}


protein <- translate_dna(dna_seq)

cat("Protein sequence:", protein)

