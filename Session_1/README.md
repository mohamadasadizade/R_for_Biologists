# Introduction
1. print
2. comment
3. variables
4. data types
5. string
6. basic math
7. Boolean
8. Taking Input and output

### print, comment, annd variables

Comments are used to explain your code. They are ignored when your program is run.


```python
print("Hello, Bioinformatics!")
#comment

```

    [1] "Hello, Bioinformatics!"



```python
print(24)
```

    [1] 24


Variables allow you to store and manipulate data. Variables have a name and a value.


```python
x = 23
print(x)
print(x +1)
print(x +2)
```

    [1] 23
    [1] 24
    [1] 25


**leftward assignment operator**

A more preferred way of assigning values to variables in R is using the leftward "<-" operator


```python
x <- 35
print(x)
```

    [1] 35



```python
price <- 100.2
name <- "Mohammad"
message <- "Welcome to the field of bioinformatics!"

print(price)
print(name)
print(message)
cat(message)
```

    [1] 100.2
    [1] "Mohammad"
    [1] "Welcome to the field of bioinformatics!"
    Welcome to the field of bioinformatics!

we can output values using the print and the cat functions.


```python
x <- "hello"
print(x)
cat(x)
```

    [1] "hello"
    hello

Variables can store different types of data, such as integers, decimals, text.


```python
# numeric
var1 <- 3.14
x <- 5
y <- 67.00
z <- 9999.97583852

#integer
var2 <- 88L

#text: Text in R is stored as a string.
var3 <- "^____^"

print(var1)
print(var2)
print(var3)
```

    [1] 3.14
    [1] 88
    [1] "^____^"


### string




```python
print("ATCGCTACGTAGCTATGCATA")
```

    [1] "ATCGCTACGTAGCTATGCATA"



```python
cat("ATATACGACT")
```

    ATATACGACT


```python
#escaping
message <- "This is called \"escaping\"."
print(message)


message <- "This is called \"escaping\"."
cat(message)
```

    [1] "This is called \"escaping\"."
    This is called "escaping".

The `paste()` function allows you to combine multiple strings into one.

---



**Assignment1:** What is the differences bitween `paste()` and `paste0()` functions?


```python
exon1 <- "TACGATCGT"
exon2 <- "ATCGATCG"
exon3 <- "GCTGTTATTTGGGCGTATAC"

#gene <- paste(exon1, exon2, exon3, "ATACGCGTAGTCGA", sep="")
gene <- paste(exon1, exon2, exon3, sep="_")
#gene <- paste(exon1, exon2, exon3, sep="")
print(gene)
```

    [1] "TACGATCGT_ATCGATCG_GCTGTTATTTGGGCGTATAC"


The `toupper()` function allows you to convert a string to uppercase.

`tolower()` converts a string to lowercase.


```python
seq <- "atcgGatCGATatcg"

seq <- toupper(seq)
print(seq)
```

    [1] "ATCGGATCGATATCG"



```python
seq <- "atcgGatCGATatcg"
seq <- tolower(seq)
print(seq)
```

    [1] "atcggatcgatatcg"


To find the number of characters in a string, you can use the `nchar()` function


```python
seq <- "ATCGCGTAGCTAGCTAGATA"
print(nchar(seq))
```

    [1] 20



```python
#Average molecular weight of one DNA nucleotide (A, T, G, or C) ≈ 330 Da.
cat((nchar(seq)*330)/1000, "KDa")
```

    6.6 KDa


```python
seq1<- "ACCGAAGGGTTTATAAAAGCTAATCGATAC"
for (i in seq(1, nchar(seq1), by=3)){
  print(substr(seq1, i, i+2))
}
```

    [1] "ACC"
    [1] "GAA"
    [1] "GGG"
    [1] "TTT"
    [1] "ATA"
    [1] "AAA"
    [1] "GCT"
    [1] "AAT"
    [1] "CGA"
    [1] "TAC"


`substr()`, function is used to get a substring from a given string by using a

1.   List item
2.   List item

start and end **index**.



```
substr(string, start_index, end_index)
```




```python
txt <- "Bioinformatics"
print(substr(txt, 1, 3))
cat(substr(txt, 4, 14))
```

    [1] "Bio"
    informatics


```python
seq <- "TATACGATAGCT"
#print(substr(seq, 4, 4)) #extract the 4th nucleic acid of the squence
print(substr(seq, 4, 6)) #extract the second codon of the seq...
```

    [1] "ACG"



```python
seq <- "ATACAGACTACAAGCAAT"
for (i in seq(1, nchar(seq), by=3)){
  print(substr(seq, i, i+2))
}
```

    [1] "ATA"
    [1] "CAG"
    [1] "ACT"
    [1] "ACA"
    [1] "AGC"
    [1] "AAT"


### Basic math


```python
x <- 11
y <- 4

#addition
print(x+y)
```


```python
#substraction
print(x-y)
```


```python
#multiplication
print(x*y)
```


```python
#division
print(x/y)
```


```python
#exponentation
print(x^y) #or x**y
```


```python
#modulus (remainder from division)
print(x%%y)
```


```python
#integer division

print(x%/%y)
```


```python
#math functions

a <- 8
b <- 12
c <- 3

#minimum
print(min(a, b, c))

#maximum
print(max(a, b, c))
```


```python
print(sqrt(64))
```

### Boolean

**Boolean** is another data type in R.


It can have one of the following 2 values: **TRUE** and **FALSE**.


Booleans are created when we compare values.


```python
x <- 14
print(x > 20)
print(x < 20)
```


```python
print(x == 2)
print(x != 2)
```


```python
print(x >= 20)
print(x <= 20)
```


```python
print(x == 14)
print(x != 14)
```


```python
num <- 15
val <- num-6
print(val)
print((num%/%val) >= 2)
```


```python
x <- FALSE
print(!x)
```
