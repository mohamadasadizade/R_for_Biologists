################################################################################

# vectors

################################################################################

#A vector is a basic data structure in R. 
#It is a sequence of elements of the same type.
#To creat vector use the c() function and separate the elements by commas.
#To access an element of the vector, use its index in square brackets []. 

Genes <- c("gene1" = "CFTR", "gene2" ="CLCN1","gene3" = "CCDC40")
print(Genes)

Expression <- c("CFTR" = 12, "CLCN1" = 122, "CCDC40" = 3)
print(Expression)

#numerical indexing
Genes <- c("CFTR", "CLCN1", "CCDC40")
print(Genes[3])

#specify a range
Genes <- c("CFTR", "CLCN1", "CCDC40", "SLC38A10")
print(Genes[1:3])

#negetive index to skip an element
Genes <- c("CFTR", "CLCN1", "CCDC40", "SLC38A10")
print(Genes[-2])

#Named indexing (character indexing)
expression <- c("CFTR"=10, "CLCN1"=0.5, "CCDC40"=234)
print(expression["CLCN1"])

age <- c("nima" =12,"ali" =22,"mohammad"= 34,"jack"= 76)
print(age["nima"])

#Logical indexing
#filtering
expression <- c("CFTR"=10, "CLCN1"=0.5, "CCDC40"=234)
print(expression[expression > 100])

################################################################################

# vectors functions 

################################################################################

Genes <- c("CFTR", "CLCN1", "CCDC40", "SLC38A10")
print(length(Genes))

x <- c(4, 8, 42, 1, 6)
print(sum(x))

x <- c(4, 8, 42, 1, 6)
y <- sort(x)
print(y)

chroNum <- c("chro" = 1, "chro" =4, "chro" =5, "chro" =2, "chro" =8)
print(sort(chroNum))

#seq function to creat vectors of number
x <- seq(1, 10, by=2)
print(x)

#change a value of an element
x <- 1:5
x[2] <- 66
print(x)

################################################################################

# vectors functions 

################################################################################

v1 <- c(2, 6, 1, 5)
v2 <- c(5, 3, 4, 8)

#addition
print(v1+v2)

#subtraction
print(v1-v2)

#multiplication
print(v1*v2)

#division
print(v1/v2)

v <- c(2, 6, 1, 5, 42)
print(mean(v))

v <- c(2, 6, 1, 5, 42)
print(median(v))

################################################################################

# translate a DNA squence to protein sequence using vectors

################################################################################

codons <- c(
  "UUU" = "F", "UUC" = "F",               # Phenylalanine
  "UUA" = "L", "UUG" = "L", "CUU" = "L", "CUC" = "L", "CUA" = "L", "CUG" = "L", # Leucine
  "AUU" = "I", "AUC" = "I", "AUA" = "I",               # Isoleucine
  "AUG" = "M",                            # Methionine (Start Codon)
  "GUU" = "V", "GUC" = "V", "GUA" = "V", "GUG" = "V",  # Valine
  "UCU" = "S", "UCC" = "S", "UCA" = "S", "UCG" = "S",  # Serine
  "CCU" = "P", "CCC" = "P", "CCA" = "P", "CCG" = "P",  # Proline
  "ACU" = "T", "ACC" = "T", "ACA" = "T", "ACG" = "T",  # Threonine
  "GCU" = "A", "GCC" = "A", "GCA" = "A", "GCG" = "A",  # Alanine
  "UAU" = "Y", "UAC" = "Y",               # Tyrosine
  "UAA" = "*", "UAG" = "*", "UGA" = "*",  # Stop Codons
  "CAU" = "H", "CAC" = "H",               # Histidine
  "CAA" = "Q", "CAG" = "Q",               # Glutamine
  "AAU" = "N", "AAC" = "N",               # Asparagine
  "AAA" = "K", "AAG" = "K",               # Lysine
  "GAU" = "D", "GAC" = "D",               # Aspartic Acid
  "GAA" = "E", "GAG" = "E",               # Glutamic Acid
  "UGU" = "C", "UGC" = "C",               # Cysteine
  "UGG" = "W",                            # Tryptophan
  "CGU" = "R", "CGC" = "R", "CGA" = "R", "CGG" = "R",  # Arginine
  "AGU" = "S", "AGC" = "S",               # Serine
  "AGA" = "R", "AGG" = "R",               # Arginine
  "GGU" = "G", "GGC" = "G", "GGA" = "G", "GGG" = "G"   # Glycine
)


print(codons["AGG"])

translation <- function(x) {
  print(codons[x])
}

translation("UGU")
translation("CCU")



translation2 <- function(x) {
  protein <- ""
  
  for (i in seq(1, nchar(x), by = 3)) {
    codon <- substr(x, i, i + 2)
    amino_acid <- codons[codon]
    if (!is.na(amino_acid)) {
      protein <- paste0(protein, amino_acid)
    } else {
      protein <- paste0(protein, "?")
    }
  }
  
  # Print the translated protein sequence
  print(protein)
}

# Example usage
translation2("AUGGGGAUUGCGCAUCAUUUUACGGCA")


################################################################################

# list

################################################################################

#Vectors can only hold elements of the same type.
#Lists are similar to vectors, but can hold different types of data.
#A list can also contain a matrix or a function as its elements.
#A list can be created using the list() function:

x <- list("Gene1", "rs103245", c(2, 4, 8), 42)
print(x)

print(x[2])


# Create a heterogeneous list
my_list <- list(
  numbers = c(1, 2, 3, 4),                   # Numeric vector
  text = "Hello, World!",                     # Character string
  matrix_data = matrix(1:9, nrow = 3),        # Matrix
  data_frame = data.frame(A = 1:3, B = letters[1:3]),  # Data frame
  boolean = TRUE,
  22,
  150                             # Logical value
)

# Print the list
print(my_list)


print(my_list[["text"]])
print(my_list$data_frame)


################################################################################

# matrix

################################################################################

#A matrix is a two dimensional data set with rows and columns. 
#It is similar to a vector, but has an additional dimension.
#A matrix can be created with the matrix() function, 
#specifying the rows and columns using the nrow and ncol parameters.

x <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
print(x)

y <- matrix(1:10, nrow = 5, ncol = 2)
print(y)

#access elements of the matrix by specifying the row and the column in square brackets
#print(x[row, col])

z <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
print(z)

print(z[1, 2])
print(z[1, ])
print(z[, 2])


#We can transpose a matrix in R with the function t()
x <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
print(x)
print(t(x))


################################################################################

# data frames

################################################################################

#What if we want to store different types of elements in 2 dimensions? 
#That's where the most important data structure of R comes in: a DataFrame
#A data frame is a table, where each column has a name
#Each column must contain the same number of data items
#We can create a data frame using the data.frame() function

x <- data.frame("id" = 1:2, 
                "name" = c("James", "Amy"),  
                "age" = c(42,18))
print(x)


annotation_df <- data.frame(
  ID = 1:5,
  Gene = c("Gene1", "Gene2", "Gene3", "Gene4", "Gene5"),
  Expression = c(120, 45, 310, 150, 90),
  GC_Content = c(52.5, 45.0, 60.3, 55.8, 48.9),
  Type = c("Enzyme", "Regulator", "Transporter", "Enzyme", "Structural")
)

print(annotation_df)


#Indexing
#second column

print(annotation_df[[2]])

print(annotation_df[,2])

print(annotation_df[2])

print(annotation_df[2,])

print(annotation_df[4, 4])

#Named indexing
#the name column
print(annotation_df[["Type"]])

#the same as
print(annotation_df$GC_Content )

#Logical indexing or filtering
print(annotation_df[annotation_df[["GC_Content"]]>50.0, ])
#print(annotation_df[annotation_df$GC_Content<50.0, ])

#filter by subset function
print(subset(annotation_df, GC_Content> 60 ))


################################################################################

# data frames operations

################################################################################

#R dataframes can be examined using the summary function. 
#It outputs the summary statistics for each of the columns

summary(annotation_df)

#You can add a new column to a dataframe by simply assigning it a vector of values.

#adding a column

annotation_df$Chromosome <- c(1, 9, 5, 7, 2)

print(annotation_df)

print(mean(annotation_df$GC_Content))

print(cor(annotation_df$GC_Content, annotation_df$Expression))