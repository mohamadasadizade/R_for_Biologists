# Programming in R
1. Decision making
2. logical operators
3. loops
4. break/next
5. Functions
6. User-defined functions
7. return


###Desision making

In many situations, you need to make a decision based on a condition. For that, you can use the **if statement**.

In case you need to run code when the condition of an if statement is FALSE, you can use an **else statement**.

In case you need multiple checks, you can use multiple **else if statements**.


```python
x <-   24
if (x < 10) {
    print("x is greater than 10")
} else {
    print("x is less than 10")
}
#parentheses: the condition
#within curly braces: code block: executed if the condition was true
```


```python
#In case you need multiple checks, you can use multiple else if statements.
num <- 3
if(num == 1) {
 print("One")
} else if(num == 2) {
  print("Two")
} else if (num == 3) {
  print("Three")
} else {
  print("Something else")
}

#suplementary: search "switch function"
```

    [1] "Three"



```python
n<-4
if(n == 2) {
  print("two")
  }  else if (n == 3) {
    print("three")
  }  else {
     print("something else")
  }
```

    [1] "something else"


### Logical operators

**Logical operators allow you to combine multiple conditions**


The logical **& (AND) operator** allows you to combine two conditions and returns **TRUE** only if **both** conditions are TRUE.


the logical **| (OR) operator** returns** TRUE** if **any one of its** conditions is TRUE.


The logical **! (NOT) operator** returns the **opposite** of the given condition




```python
#& (AND) operator
x <- 6
y <- 2
if(x>y & x < 10) {
  print("Yes")
}
```

    [1] "Yes"



```python
# | (OR) operator
x <- 6
y <- 2
if(x>y | x > 100) {
  print("Yes")
}
```

    [1] "Yes"



```python
# ! (NOT) operator
x <- TRUE
sib <- FALSE


print(!x)
```

    [1] FALSE



```python
print(((15 > 4) & (8 < 9)) | (4 > 6))
```

    [1] TRUE


### Loop

Loops allow you to repeat a block of code until a given condition is TRUE.

Each time the computer runs through a loop, it's referred to as an **iteration**.



```
while (condition) {
    code to run
}
```




```python
#while loop
i <- 1
while (i <= 10) {
  print(i)
  i <- i + 1
}
```

    [1] 1
    [1] 2
    [1] 3
    [1] 4
    [1] 5
    [1] 6
    [1] 7
    [1] 8
    [1] 9
    [1] 10



```python
#for loop is used to iterate over a given sequence.

for (x in 1:10) {
  print(x)
}
```

    [1] 1
    [1] 2
    [1] 3
    [1] 4
    [1] 5
    [1] 6
    [1] 7
    [1] 8
    [1] 9
    [1] 10


The **break** statement allows you to stop a loop.


```python
i <- 8

while(i > 0) {
    print(i)
    i <- i - 1
    if(i == 4) {
        break
    }
}
```

    [1] 8
    [1] 7
    [1] 6
    [1] 5


The **next** statements allows you to skip an iteration and continue running the loop at the next iteration.


```python
for(x in 1:15) {
    if(x == 13) {
        next
    }
    print(x)
}
```

    [1] 1
    [1] 2
    [1] 3
    [1] 4
    [1] 5
    [1] 6
    [1] 7
    [1] 8
    [1] 9
    [1] 10
    [1] 11
    [1] 12
    [1] 14
    [1] 15



```python
seq <- "ATCGCTAGCXGACT"

for (x in 1:nchar(seq)){

  if (substr(seq,x,x) == "A" | substr(seq,x,x) == "T" | substr(seq,x,x) == "C" | substr(seq,x,x) == "G" ){
  #if (substr(seq, x, x) %in% c("A", "T", "C", "G")) {
    next
  } else {
    cat("there is a non-standard nucleic acid!")
    break
  }

}
```

    there is a non-standard nucleic acid!

### Functions

A function is a block of code that can be called using its name.

A function can also take parameters as input and return values.


R has many built-in functions. We have seen some of them before.

For example, print("Hello") is calling the function print with the parameter "Hello".

Parameters are passed into functions inside parentheses.

Functions can have multiple parameters, separated by commas.


```python
{
  (gsub"[^GC]","","CGTACGTAGCTAGCTTACGATCGTACGATCGGTA")
}
```


```python
x <- max(8, 3, 12, 88)
y <- min(3:10)
print(x)
print(y)
```

    [1] 88
    [1] 3




**user-defined functions**



```
name <- function(input1, input2, input3) {
  code block
  return(output)
}
```




```python
miveh <- function(sib, moz) {
  sibyek <- substr(sib,1,1)
  mozyek <- substr(moz,1,1)
  x <- paste(sibyek, mozyek, sep="")
  return(x)
}
```


```python
nchar(miveh("ATCGCTAT", "ATACGCTC"))
```


2



```python
chick <- function(x, y) {
result <- x^y
print(result)
}

#chick(2, 5)
#chick(8, 3)
#chick(2, 5)
chick(8, 3)
```

    [1] 512



```python
#Default Parameter Values
chick <- function(x, y=2) {
  result <- x^y
  print(result)
}

#chick(5)
chick(5, 3)
```

    [1] 125



```python
chick(2, chick(2, chick(2)))
```

we can use the **return** function to return a value from our function.


```python
chick <- function(x, y=2) {
  result <- x^y

  return(result)
}

a <- chick(8)
print(chick(4))
```

    [1] 16


**Example:Translating DNA seq to Protein seq just by if/else and for loop.**


```python
x <- miveh("ATCGCTAT", "ATACGCTC")
```


```python
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

```

    Protein sequence: MVLLV


```python
num <- 15
val <- num-6
print((num%/%val))
```

    [1] 1

