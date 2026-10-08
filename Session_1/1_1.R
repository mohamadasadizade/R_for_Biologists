################################################################################

#1. print, comment, annd variables

################################################################################

print("Hello, Bioinformatics!")
#comment

print(24)


#Variables allow you to store and manipulate data. 
#Variables have a name and a value.

x = 23
print(x)
print(x +1)
print(x +2)


#leftward "<-" operator
price <- 100.2
name <- "Mohammad"
message <- "Welcome to the field of bioinformatics!"

print(price)
print(name)
print(message)
cat(message)


#we can output values using the print and the cat functions
x <- "hello"
print(x)
cat(x)


################################################################################

#2. String, working with biological sequences

################################################################################
print("ATCGCTACGTAGCTATGCATA")
#versus
cat("ATATACGACT")


#escaping
message <- "This is called \"escaping\"."
print(message)


message <- "This is called \"escaping\"."
cat(message)

###################
#paste function 
###################

exon1 <- "TACGATCGT"
exon2 <- "ATCGATCG"
exon3 <- "GCTGTTATTTGGGCGTATAC"

#gene <- paste(exon1, exon2, exon3, "ATACGCGTAGTCGA", sep="")
gene <- paste(exon1, exon2, exon3, sep="_")
#gene <- paste(exon1, exon2, exon3, sep="")
print(gene)

###################
#toupper and tolower function 
###################

seq <- "atcgGatCGATatcg"
seq <- toupper(seq)
print(seq)

seq <- "atcgGatCGATatcg"
seq <- tolower(seq)
print(seq)


###################
#nchar function 
###################

seq <- "ATCGCGTAGCTAGCTAGATA"
print(nchar(seq))

#Average molecular weight of one DNA nucleotide (A, T, G, or C) ≈ 330 Da.
cat("your sequence is almost", (nchar(seq)*330)/1000, "KDa")


###################
#substr function 
###################

#this function can be used for windowing the codons on a DNA sequence
seq1<- "ACCGAAGGGTTTATAAAAGCTAATCGATAC"
print(substr(seq1, 1, 3))


seq <- "TATACGATAGCT"
#print(substr(seq, 4, 4)) #extract the 4th nucleic acid of the squence
print(substr(seq, 4, 6)) #extract the second codon of the seq...

seq <- "ATACAGACTACAAGCAAT"
for (i in seq(1, nchar(seq), by=3)){
  print(substr(seq, i, i+2))
}



################################################################################

#3. basic math 

################################################################################
x <- 11
y <- 4

#addition
print(x+y)

#substraction
print(x-y)

#multiplication
print(x*y)

#division
print(x/y)

#exponentation
print(x^y) #or x**y

#modulus (remainder from division)
print(x%%y)

#integer division
print(x%/%y)

###################
#math functions 
###################

a <- 8
b <- 12
c <- 3

#minimum
print(min(a, b, c))

#maximum
print(max(a, b, c))

print(sqrt(64))


################################################################################

#4. Boolean datatype and comparison

################################################################################

x <- 14
print(x > 20)
print(x < 20)

print(x == 2)
print(x != 2)

print(x >= 20)
print(x <= 20)

print(x == 14)
print(x != 14)

x <- FALSE
print(!x)

#example 1
num <- 15
val <- num-6
print(val)
print((num%/%val) >= 2)
