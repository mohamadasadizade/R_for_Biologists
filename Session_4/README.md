# Data analysis

-  importing data and biological datasets
-  Basic statistics
-  Logical filtering
-  working with data


## genetic variants dataset


\begin{array}{|c|c|c|c|c|c|c|c|c|}
\hline
\textbf{Chromosome} & \textbf{Variant ID} & \textbf{Position} & \textbf{Gene ID} & \textbf{Ref} & \textbf{Alt} & \textbf{Impact} & \textbf{Clinical Significance} \\ \hline
1 & rs123 & 123456 & BRCA1 & A & G & High & 1 \\ \hline
2 & rs456 & 234567 & TP53 & C & T & Moderate & 0 \\ \hline
3 & rs789 & 345678 & EGFR & G & A & Low & 1 \\ \hline
\end{array}




```python
data <- read.csv("Variants.csv")
```


```python
print(data)
```

        Variant Chromosome Position  Gene Ref Alt   Mutation Impact
    1  rs123456          1   123456  ABC1   A   G   Missense      1
    2  rs789012          2   234567  ABC2   C   T     Silent      0
    3  rs345678          3   345678  ABC3   G   A Frameshift      4
    4  rs567890          4   456789  ABC4   T   C   Missense      5
    5  rs910111          5   567890  ABC5   A   T  Insertion      6
    6  rs234567          6   678901  ABC6   G   C   Deletion      8
    7  rs890123          7   789012  ABC7   C   G   Missense      7
    8  rs123890          8   890123  ABC8   A   C     Silent      4
    9  rs456789          9   901234  ABC9   T   G   Missense      3
    10 rs234890         10   123456 ABC10   G   A Frameshift      5
    11 rs345890         11   234567 ABC11   C   T   Missense      6
    12 rs567123         12   345678 ABC12   A   T  Insertion      8
    13 rs789345         13   456789 ABC13   T   C     Silent      4
    14 rs123789         14   567890 ABC14   G   A   Missense      3
    15 rs910123         15   678901 ABC15   A   G   Deletion      2
    16 rs345012         16   789012 ABC16   T   G     Silent      5
    17 rs789567         17   890123 ABC17   C   T Frameshift      6
    18 rs234123         18   901234 ABC18   A   C   Missense      8
    19 rs567456         19   123456 ABC19   G   T  Insertion    100
    20 rs890789         20   234567 ABC20   C   A   Deletion     33
    21 rs234001          1   101234  DEF1   G   T   Missense      5
    22 rs345001          2   202345  DEF2   C   A     Silent      4
    23 rs456001          3   303456  DEF3   T   G Frameshift     34
    24 rs567001          4   404567  DEF4   A   C  Insertion     22
    25 rs678001          5   505678  DEF5   G   C   Deletion    100
    26 rs789001          6   606789  DEF6   T   A   Missense      1
    27 rs890001          7   707890  DEF7   A   T     Silent      2
    28 rs901001          8   808901  DEF8   G   A Frameshift      5
    29 rs123001          9   909012  DEF9   C   T   Missense      6
    30 rs234002         10   101234 DEF10   G   C  Insertion      8
    31 rs345002         11   202345 DEF11   T   A     Silent      7
    32 rs456002         12   303456 DEF12   A   G   Missense      6
    33 rs567002         13   404567 DEF13   C   G   Deletion      5
    34 rs678002         14   505678 DEF14   T   C Frameshift     12
    35 rs789002         15   606789 DEF15   G   A     Silent     42
    36 rs890002         16   707890 DEF16   A   T   Missense     53
    37 rs901002         17   808901 DEF17   T   G  Insertion     67
    38 rs123002         18   909012 DEF18   G   C     Silent      5
    39 rs234003         19   101234 DEF19   A   T   Missense      4
    40 rs345003         20   202345 DEF20   C   A   Deletion      3
    41 rs567890         15   890123  GHI1   G   A   Missense     24
    42 rs123456         12   234567  GHI2   T   G     Silent      5
    43 rs890123         17   345678  GHI3   C   T  Insertion      6
    44 rs234567          2   456789  GHI4   A   C   Deletion      7
    45 rs345678         11   567890  GHI5   G   T   Missense    100
    46 rs567123          9   678901  GHI6   A   G Frameshift     98
    47 rs789012          1   789012  GHI7   T   A     Silent     67
    48 rs890567         14   890123  GHI8   C   G   Missense     87
    49 rs456789          5   901234  GHI9   A   T     Silent     98
    50 rs234890          7   123456 GHI10   G   C Frameshift     12
    51 rs678901         19   234567 GHI11   T   G  Insertion      3
    52 rs345123          8   345678 GHI12   C   A   Missense      4
    53 rs789345          4   456789 GHI13   A   G   Deletion      5
    54 rs567456         16   567890 GHI14   T   C Frameshift      7
    55 rs123890          6   678901 GHI15   G   A     Silent     97
    56 rs345890         18   789012 GHI16   A   C  Insertion      4
    57 rs910111         10   890123 GHI17   T   G   Missense      3
    58 rs234001         13   901234 GHI18   C   T     Silent      2
    59 rs345001          3   123456 GHI19   A   G   Missense      4
    60 rs456001         20   234567 GHI20   G   T Frameshift     65
       Clinical.Significance
    1                      4
    2                      1
    3                      5
    4                      2
    5                      3
    6                      0
    7                      5
    8                      1
    9                      4
    10                     2
    11                     4
    12                     3
    13                     1
    14                     2
    15                     0
    16                     1
    17                     5
    18                     2
    19                     4
    20                     0
    21                     4
    22                     1
    23                     5
    24                     3
    25                     0
    26                     2
    27                     1
    28                     4
    29                     5
    30                     3
    31                     1
    32                     2
    33                     0
    34                     5
    35                     1
    36                     4
    37                     3
    38                     1
    39                     2
    40                     0
    41                     4
    42                     1
    43                     3
    44                     0
    45                     5
    46                     2
    47                     1
    48                     4
    49                     0
    50                     5
    51                     3
    52                     2
    53                     0
    54                     4
    55                     1
    56                     3
    57                     5
    58                     1
    59                     4
    60                     2



```python
summary(data)
```


       Variant            Chromosome       Position          Gene          
     Length:60          Min.   : 1.00   Min.   :101234   Length:60         
     Class :character   1st Qu.: 5.75   1st Qu.:234567   Class :character  
     Mode  :character   Median :10.50   Median :505678   Mode  :character  
                        Mean   :10.50   Mean   :513944                     
                        3rd Qu.:15.25   3rd Qu.:789012                     
                        Max.   :20.00   Max.   :909012                     
         Ref                Alt              Mutation             Impact      
     Length:60          Length:60          Length:60          Min.   :  0.00  
     Class :character   Class :character   Class :character   1st Qu.:  4.00  
     Mode  :character   Mode  :character   Mode  :character   Median :  6.00  
                                                              Mean   : 21.78  
                                                              3rd Qu.: 22.50  
                                                              Max.   :100.00  
     Clinical.Significance
     Min.   :0.000        
     1st Qu.:1.000        
     Median :2.000        
     Mean   :2.433        
     3rd Qu.:4.000        
     Max.   :5.000        


#### Basic statistics


```python
mean(data$Impact)
```


21.7833333333333


**Variance** is how much each numbers in a set differs from the average.

$$ \text{Var}(X) = \frac{1}{N} \sum_{i=1}^{N} (x_i - \mu)^2 $$



Where $ μ $ is the mean of the numbers and $ x_i $ are the individual numbers.


```python
var(data$Impact)
```


1019.73192090395


The **standard deviation** **(SD)** is the square root of the variance.

$$ \sigma = \sqrt{\text{Var}(X)} $$




```python
sd(data$Impact)
```


31.9332416284967


## iris built-in dataset


```python
print(iris)
```

        Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
    1            5.1         3.5          1.4         0.2     setosa
    2            4.9         3.0          1.4         0.2     setosa
    3            4.7         3.2          1.3         0.2     setosa
    4            4.6         3.1          1.5         0.2     setosa
    5            5.0         3.6          1.4         0.2     setosa
    6            5.4         3.9          1.7         0.4     setosa
    7            4.6         3.4          1.4         0.3     setosa
    8            5.0         3.4          1.5         0.2     setosa
    9            4.4         2.9          1.4         0.2     setosa
    10           4.9         3.1          1.5         0.1     setosa
    11           5.4         3.7          1.5         0.2     setosa
    12           4.8         3.4          1.6         0.2     setosa
    13           4.8         3.0          1.4         0.1     setosa
    14           4.3         3.0          1.1         0.1     setosa
    15           5.8         4.0          1.2         0.2     setosa
    16           5.7         4.4          1.5         0.4     setosa
    17           5.4         3.9          1.3         0.4     setosa
    18           5.1         3.5          1.4         0.3     setosa
    19           5.7         3.8          1.7         0.3     setosa
    20           5.1         3.8          1.5         0.3     setosa
    21           5.4         3.4          1.7         0.2     setosa
    22           5.1         3.7          1.5         0.4     setosa
    23           4.6         3.6          1.0         0.2     setosa
    24           5.1         3.3          1.7         0.5     setosa
    25           4.8         3.4          1.9         0.2     setosa
    26           5.0         3.0          1.6         0.2     setosa
    27           5.0         3.4          1.6         0.4     setosa
    28           5.2         3.5          1.5         0.2     setosa
    29           5.2         3.4          1.4         0.2     setosa
    30           4.7         3.2          1.6         0.2     setosa
    31           4.8         3.1          1.6         0.2     setosa
    32           5.4         3.4          1.5         0.4     setosa
    33           5.2         4.1          1.5         0.1     setosa
    34           5.5         4.2          1.4         0.2     setosa
    35           4.9         3.1          1.5         0.2     setosa
    36           5.0         3.2          1.2         0.2     setosa
    37           5.5         3.5          1.3         0.2     setosa
    38           4.9         3.6          1.4         0.1     setosa
    39           4.4         3.0          1.3         0.2     setosa
    40           5.1         3.4          1.5         0.2     setosa
    41           5.0         3.5          1.3         0.3     setosa
    42           4.5         2.3          1.3         0.3     setosa
    43           4.4         3.2          1.3         0.2     setosa
    44           5.0         3.5          1.6         0.6     setosa
    45           5.1         3.8          1.9         0.4     setosa
    46           4.8         3.0          1.4         0.3     setosa
    47           5.1         3.8          1.6         0.2     setosa
    48           4.6         3.2          1.4         0.2     setosa
    49           5.3         3.7          1.5         0.2     setosa
    50           5.0         3.3          1.4         0.2     setosa
    51           7.0         3.2          4.7         1.4 versicolor
    52           6.4         3.2          4.5         1.5 versicolor
    53           6.9         3.1          4.9         1.5 versicolor
    54           5.5         2.3          4.0         1.3 versicolor
    55           6.5         2.8          4.6         1.5 versicolor
    56           5.7         2.8          4.5         1.3 versicolor
    57           6.3         3.3          4.7         1.6 versicolor
    58           4.9         2.4          3.3         1.0 versicolor
    59           6.6         2.9          4.6         1.3 versicolor
    60           5.2         2.7          3.9         1.4 versicolor
    61           5.0         2.0          3.5         1.0 versicolor
    62           5.9         3.0          4.2         1.5 versicolor
    63           6.0         2.2          4.0         1.0 versicolor
    64           6.1         2.9          4.7         1.4 versicolor
    65           5.6         2.9          3.6         1.3 versicolor
    66           6.7         3.1          4.4         1.4 versicolor
    67           5.6         3.0          4.5         1.5 versicolor
    68           5.8         2.7          4.1         1.0 versicolor
    69           6.2         2.2          4.5         1.5 versicolor
    70           5.6         2.5          3.9         1.1 versicolor
    71           5.9         3.2          4.8         1.8 versicolor
    72           6.1         2.8          4.0         1.3 versicolor
    73           6.3         2.5          4.9         1.5 versicolor
    74           6.1         2.8          4.7         1.2 versicolor
    75           6.4         2.9          4.3         1.3 versicolor
    76           6.6         3.0          4.4         1.4 versicolor
    77           6.8         2.8          4.8         1.4 versicolor
    78           6.7         3.0          5.0         1.7 versicolor
    79           6.0         2.9          4.5         1.5 versicolor
    80           5.7         2.6          3.5         1.0 versicolor
    81           5.5         2.4          3.8         1.1 versicolor
    82           5.5         2.4          3.7         1.0 versicolor
    83           5.8         2.7          3.9         1.2 versicolor
    84           6.0         2.7          5.1         1.6 versicolor
    85           5.4         3.0          4.5         1.5 versicolor
    86           6.0         3.4          4.5         1.6 versicolor
    87           6.7         3.1          4.7         1.5 versicolor
    88           6.3         2.3          4.4         1.3 versicolor
    89           5.6         3.0          4.1         1.3 versicolor
    90           5.5         2.5          4.0         1.3 versicolor
    91           5.5         2.6          4.4         1.2 versicolor
    92           6.1         3.0          4.6         1.4 versicolor
    93           5.8         2.6          4.0         1.2 versicolor
    94           5.0         2.3          3.3         1.0 versicolor
    95           5.6         2.7          4.2         1.3 versicolor
    96           5.7         3.0          4.2         1.2 versicolor
    97           5.7         2.9          4.2         1.3 versicolor
    98           6.2         2.9          4.3         1.3 versicolor
    99           5.1         2.5          3.0         1.1 versicolor
    100          5.7         2.8          4.1         1.3 versicolor
    101          6.3         3.3          6.0         2.5  virginica
    102          5.8         2.7          5.1         1.9  virginica
    103          7.1         3.0          5.9         2.1  virginica
    104          6.3         2.9          5.6         1.8  virginica
    105          6.5         3.0          5.8         2.2  virginica
    106          7.6         3.0          6.6         2.1  virginica
    107          4.9         2.5          4.5         1.7  virginica
    108          7.3         2.9          6.3         1.8  virginica
    109          6.7         2.5          5.8         1.8  virginica
    110          7.2         3.6          6.1         2.5  virginica
    111          6.5         3.2          5.1         2.0  virginica
    112          6.4         2.7          5.3         1.9  virginica
    113          6.8         3.0          5.5         2.1  virginica
    114          5.7         2.5          5.0         2.0  virginica
    115          5.8         2.8          5.1         2.4  virginica
    116          6.4         3.2          5.3         2.3  virginica
    117          6.5         3.0          5.5         1.8  virginica
    118          7.7         3.8          6.7         2.2  virginica
    119          7.7         2.6          6.9         2.3  virginica
    120          6.0         2.2          5.0         1.5  virginica
    121          6.9         3.2          5.7         2.3  virginica
    122          5.6         2.8          4.9         2.0  virginica
    123          7.7         2.8          6.7         2.0  virginica
    124          6.3         2.7          4.9         1.8  virginica
    125          6.7         3.3          5.7         2.1  virginica
    126          7.2         3.2          6.0         1.8  virginica
    127          6.2         2.8          4.8         1.8  virginica
    128          6.1         3.0          4.9         1.8  virginica
    129          6.4         2.8          5.6         2.1  virginica
    130          7.2         3.0          5.8         1.6  virginica
    131          7.4         2.8          6.1         1.9  virginica
    132          7.9         3.8          6.4         2.0  virginica
    133          6.4         2.8          5.6         2.2  virginica
    134          6.3         2.8          5.1         1.5  virginica
    135          6.1         2.6          5.6         1.4  virginica
    136          7.7         3.0          6.1         2.3  virginica
    137          6.3         3.4          5.6         2.4  virginica
    138          6.4         3.1          5.5         1.8  virginica
    139          6.0         3.0          4.8         1.8  virginica
    140          6.9         3.1          5.4         2.1  virginica
    141          6.7         3.1          5.6         2.4  virginica
    142          6.9         3.1          5.1         2.3  virginica
    143          5.8         2.7          5.1         1.9  virginica
    144          6.8         3.2          5.9         2.3  virginica
    145          6.7         3.3          5.7         2.5  virginica
    146          6.7         3.0          5.2         2.3  virginica
    147          6.3         2.5          5.0         1.9  virginica
    148          6.5         3.0          5.2         2.0  virginica
    149          6.2         3.4          5.4         2.3  virginica
    150          5.9         3.0          5.1         1.8  virginica



```python
summary(iris)
```


      Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
     Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
     1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
     Median :5.800   Median :3.000   Median :4.350   Median :1.300  
     Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
     3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
     Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
           Species  
     setosa    :50  
     versicolor:50  
     virginica :50  
                    
                    
                    


#### Logical data filtering

\
\begin{array}{|c|c|c|c|c|}
\hline
\textbf{Sepal.Length} & \textbf{Sepal.Width} & \textbf{Petal.Length} & \textbf{Petal.Width} & \textbf{Species} \\ \hline
5.1 & 3.5 & 1.4 & 0.2 & \text{setosa} \\ \hline
4.9 & 3.0 & 1.4 & 0.2 & \text{setosa} \\ \hline
4.7 & 3.2 & 1.3 & 0.2 & \text{setosa} \\ \hline
7.0 & 3.2 & 4.7 & 1.4 & \text{versicolor} \\ \hline
6.4 & 3.2 & 4.5 & 1.5 & \text{versicolor} \\ \hline
6.9 & 3.1 & 4.9 & 1.5 & \text{versicolor} \\ \hline
6.3 & 3.3 & 6.0 & 2.5 & \text{virginica} \\ \hline
5.8 & 2.7 & 5.1 & 1.9 & \text{virginica} \\ \hline
7.1 & 3.0 & 5.9 & 2.1 & \text{virginica} \\ \hline
\end{array}




```python
iris[iris$Species == "setosa",]
#find the row that corresponds to setosa
```


<table class="dataframe">
<caption>A data.frame: 50 × 5</caption>
<thead>
	<tr><th></th><th scope=col>Sepal.Length</th><th scope=col>Sepal.Width</th><th scope=col>Petal.Length</th><th scope=col>Petal.Width</th><th scope=col>Species</th></tr>
	<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>
</thead>
<tbody>
	<tr><th scope=row>1</th><td>5.1</td><td>3.5</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>2</th><td>4.9</td><td>3.0</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>3</th><td>4.7</td><td>3.2</td><td>1.3</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>4</th><td>4.6</td><td>3.1</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>5</th><td>5.0</td><td>3.6</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>6</th><td>5.4</td><td>3.9</td><td>1.7</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>7</th><td>4.6</td><td>3.4</td><td>1.4</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>8</th><td>5.0</td><td>3.4</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>9</th><td>4.4</td><td>2.9</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>10</th><td>4.9</td><td>3.1</td><td>1.5</td><td>0.1</td><td>setosa</td></tr>
	<tr><th scope=row>11</th><td>5.4</td><td>3.7</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>12</th><td>4.8</td><td>3.4</td><td>1.6</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>13</th><td>4.8</td><td>3.0</td><td>1.4</td><td>0.1</td><td>setosa</td></tr>
	<tr><th scope=row>14</th><td>4.3</td><td>3.0</td><td>1.1</td><td>0.1</td><td>setosa</td></tr>
	<tr><th scope=row>15</th><td>5.8</td><td>4.0</td><td>1.2</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>16</th><td>5.7</td><td>4.4</td><td>1.5</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>17</th><td>5.4</td><td>3.9</td><td>1.3</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>18</th><td>5.1</td><td>3.5</td><td>1.4</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>19</th><td>5.7</td><td>3.8</td><td>1.7</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>20</th><td>5.1</td><td>3.8</td><td>1.5</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>21</th><td>5.4</td><td>3.4</td><td>1.7</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>22</th><td>5.1</td><td>3.7</td><td>1.5</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>23</th><td>4.6</td><td>3.6</td><td>1.0</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>24</th><td>5.1</td><td>3.3</td><td>1.7</td><td>0.5</td><td>setosa</td></tr>
	<tr><th scope=row>25</th><td>4.8</td><td>3.4</td><td>1.9</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>26</th><td>5.0</td><td>3.0</td><td>1.6</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>27</th><td>5.0</td><td>3.4</td><td>1.6</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>28</th><td>5.2</td><td>3.5</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>29</th><td>5.2</td><td>3.4</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>30</th><td>4.7</td><td>3.2</td><td>1.6</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>31</th><td>4.8</td><td>3.1</td><td>1.6</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>32</th><td>5.4</td><td>3.4</td><td>1.5</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>33</th><td>5.2</td><td>4.1</td><td>1.5</td><td>0.1</td><td>setosa</td></tr>
	<tr><th scope=row>34</th><td>5.5</td><td>4.2</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>35</th><td>4.9</td><td>3.1</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>36</th><td>5.0</td><td>3.2</td><td>1.2</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>37</th><td>5.5</td><td>3.5</td><td>1.3</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>38</th><td>4.9</td><td>3.6</td><td>1.4</td><td>0.1</td><td>setosa</td></tr>
	<tr><th scope=row>39</th><td>4.4</td><td>3.0</td><td>1.3</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>40</th><td>5.1</td><td>3.4</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>41</th><td>5.0</td><td>3.5</td><td>1.3</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>42</th><td>4.5</td><td>2.3</td><td>1.3</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>43</th><td>4.4</td><td>3.2</td><td>1.3</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>44</th><td>5.0</td><td>3.5</td><td>1.6</td><td>0.6</td><td>setosa</td></tr>
	<tr><th scope=row>45</th><td>5.1</td><td>3.8</td><td>1.9</td><td>0.4</td><td>setosa</td></tr>
	<tr><th scope=row>46</th><td>4.8</td><td>3.0</td><td>1.4</td><td>0.3</td><td>setosa</td></tr>
	<tr><th scope=row>47</th><td>5.1</td><td>3.8</td><td>1.6</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>48</th><td>4.6</td><td>3.2</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>49</th><td>5.3</td><td>3.7</td><td>1.5</td><td>0.2</td><td>setosa</td></tr>
	<tr><th scope=row>50</th><td>5.0</td><td>3.3</td><td>1.4</td><td>0.2</td><td>setosa</td></tr>
</tbody>
</table>




```python
length(iris[iris$Species == "setosa",])
```


5



```python
nrow(iris[iris$Species == "setosa",])
```


50


Multiple condition filtering


```python
x <- iris[iris$Species == "setosa" & iris$Sepal.Width > 4,]
```


```python
print(x)
```

       Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    16          5.7         4.4          1.5         0.4  setosa
    33          5.2         4.1          1.5         0.1  setosa
    34          5.5         4.2          1.4         0.2  setosa


## Gene expression datasets


\begin{array}{|c|c|c|c|c|c|c|}
\hline
\textbf{Person} & \textbf{Gene A} & \textbf{Gene B} & \textbf{Gene C} & \textbf{Gene D} & \textbf{Gene E} & \textbf{Cancer} \\ \hline
P01 & 50 & 60 & 110 & 45 & 50 & 0 \\ \hline
P02 & 51 & 59 & 109 & 46 & 49 & 0 \\ \hline
P03 & 123 & 193 & 101 & 47 & 48 & 1 \\ \hline
P04 & 127 & 197 & 102 & 46 & 49 & 1 \\ \hline
P05 & 125 & 195 & 103 & 44 & 51 & 1 \\ \hline
\end{array}



```python
trans <- read.csv("Expression.csv")
```


```python
print(trans)
```

       Person Gene.A Gene.B Gene.C Gene.D Gene.E Cancer
    1     P01     50     60    100     45     50      0
    2     P02     52     62    101     47     48      0
    3     P03     48     63    102     46     49      0
    4     P04     51     58    103     44     51      0
    5     P05     50     60    100     45     50      0
    6     P06    120    190    100     45     50      1
    7     P07    125    195    101     47     48      1
    8     P08    122    192    102     46     49      1
    9     P09    118    188    103     44     51      1
    10    P10    121    191    100     45     50      1
    11    P11     51     59    100     45     50      0
    12    P12     53     61    101     47     48      0
    13    P13     49     57    102     46     49      0
    14    P14     50     58    103     44     51      0
    15    P15     52     60    100     45     50      0
    16    P16    130    200    100     45     50      1
    17    P17    128    198    101     47     48      1
    18    P18    126    196    102     46     49      1
    19    P19    124    194    103     44     51      1
    20    P20    129    199    100     45     50      1
    21    P21     49     61    100     45     50      0
    22    P22     51     59    101     46     49      0
    23    P23     50     62    102     47     48      0
    24    P24     52     60    103     44     51      0
    25    P25     48     58    100     45     50      0
    26    P26    123    193    101     47     48      1
    27    P27    127    197    102     46     49      1
    28    P28    125    195    103     44     51      1
    29    P29    122    192    100     45     50      1
    30    P30    130    200    101     47     48      1



```python
summary(trans)
```


        Person              Gene.A           Gene.B          Gene.C     
     Length:30          Min.   : 48.00   Min.   : 57.0   Min.   :100.0  
     Class :character   1st Qu.: 50.25   1st Qu.: 60.0   1st Qu.:100.0  
     Mode  :character   Median : 85.50   Median :125.5   Median :101.0  
                        Mean   : 87.53   Mean   :127.3   Mean   :101.2  
                        3rd Qu.:124.75   3rd Qu.:194.8   3rd Qu.:102.0  
                        Max.   :130.00   Max.   :200.0   Max.   :103.0  
         Gene.D          Gene.E          Cancer   
     Min.   :44.00   Min.   :48.00   Min.   :0.0  
     1st Qu.:45.00   1st Qu.:49.00   1st Qu.:0.0  
     Median :45.00   Median :50.00   Median :0.5  
     Mean   :45.47   Mean   :49.53   Mean   :0.5  
     3rd Qu.:46.00   3rd Qu.:50.00   3rd Qu.:1.0  
     Max.   :47.00   Max.   :51.00   Max.   :1.0  


#### correlation matrix

- A correlation matrix is used in data analytics to find the dependence between multiple columns.

- A correlation value close to **1** shows that the compared columns are **highly correlated**, while a value close to **0** shows that they are **less correlated**.

- You can find the correlation matrix using the `cor()` function.



```python
cor_gene <- cor(trans)
```


    Error in cor(trans): 'x' must be numeric
    Traceback:


    1. stop("'x' must be numeric")

    2. .handleSimpleError(function (cnd) 
     . {
     .     watcher$capture_plot_and_output()
     .     cnd <- sanitize_call(cnd)
     .     watcher$push(cnd)
     .     switch(on_error, continue = invokeRestart("eval_continue"), 
     .         stop = invokeRestart("eval_stop"), error = invokeRestart("eval_error", 
     .             cnd))
     . }, "'x' must be numeric", base::quote(cor(trans)))



```python
print(cor_gene <- cor(trans[-1]))
```

                Gene.A      Gene.B      Gene.C      Gene.D      Gene.E      Cancer
    Gene.A  1.00000000  0.99905423  0.02130964  0.08436662 -0.08436662  0.99731623
    Gene.B  0.99905423  1.00000000  0.02248845  0.08012629 -0.08012629  0.99914601
    Gene.C  0.02130964  0.02248845  1.00000000 -0.22775078  0.22775078  0.02909880
    Gene.D  0.08436662  0.08012629 -0.22775078  1.00000000 -1.00000000  0.06311944
    Gene.E -0.08436662 -0.08012629  0.22775078 -1.00000000  1.00000000 -0.06311944
    Cancer  0.99731623  0.99914601  0.02909880  0.06311944 -0.06311944  1.00000000



```python
trans_numeric <- trans[2:6]
print(trans_numeric)
```

       Gene.A Gene.B Gene.C Gene.D Gene.E
    1      50     60    100     45     50
    2      52     62    101     47     48
    3      48     63    102     46     49
    4      51     58    103     44     51
    5      50     60    100     45     50
    6     120    190    100     45     50
    7     125    195    101     47     48
    8     122    192    102     46     49
    9     118    188    103     44     51
    10    121    191    100     45     50
    11     51     59    100     45     50
    12     53     61    101     47     48
    13     49     57    102     46     49
    14     50     58    103     44     51
    15     52     60    100     45     50
    16    130    200    100     45     50
    17    128    198    101     47     48
    18    126    196    102     46     49
    19    124    194    103     44     51
    20    129    199    100     45     50
    21     49     61    100     45     50
    22     51     59    101     46     49
    23     50     62    102     47     48
    24     52     60    103     44     51
    25     48     58    100     45     50
    26    123    193    101     47     48
    27    127    197    102     46     49
    28    125    195    103     44     51
    29    122    192    100     45     50
    30    130    200    101     47     48



```python
print(cor_gene <- cor(trans_numeric))
```

                Gene.A      Gene.B      Gene.C      Gene.D      Gene.E
    Gene.A  1.00000000  0.99905423  0.02130964  0.08436662 -0.08436662
    Gene.B  0.99905423  1.00000000  0.02248845  0.08012629 -0.08012629
    Gene.C  0.02130964  0.02248845  1.00000000 -0.22775078  0.22775078
    Gene.D  0.08436662  0.08012629 -0.22775078  1.00000000 -1.00000000
    Gene.E -0.08436662 -0.08012629  0.22775078 -1.00000000  1.00000000



```python
print(round(cor_gene, 2))
```

           Gene.A Gene.B Gene.C Gene.D Gene.E
    Gene.A   1.00   1.00   0.02   0.08  -0.08
    Gene.B   1.00   1.00   0.02   0.08  -0.08
    Gene.C   0.02   0.02   1.00  -0.23   0.23
    Gene.D   0.08   0.08  -0.23   1.00  -1.00
    Gene.E  -0.08  -0.08   0.23  -1.00   1.00



```python
heatmap(cor_gene,
        col = colorRampPalette(c("cyan", "white", "pink"))(50),
        symm = TRUE)


# cyan for negative, pink for positive correlations
```


    
![png](Session_4_files/Session_4_34_0.png)
    


#### T test


\begin{array}{|c|c|c|c|c|c|c|}
\hline
\textbf{Person} & \textbf{Gene A} & \textbf{Gene B} & \textbf{Gene C} & \textbf{Gene D} & \textbf{Gene E} & \textbf{Cancer} \\ \hline
P01 & 50 & 60 & 110 & 45 & 50 & 0 \\ \hline
P02 & 51 & 59 & 109 & 46 & 49 & 0 \\ \hline
P03 & 123 & 193 & 101 & 47 & 48 & 1 \\ \hline
P04 & 127 & 197 & 102 & 46 & 49 & 1 \\ \hline
P05 & 125 & 195 & 103 & 44 & 51 & 1 \\ \hline
\end{array}


```python
trans <- read.csv("Expression.csv")
```


```python
print(trans)
```

       Person Gene.A Gene.B Gene.C Gene.D Gene.E Cancer
    1     P01     50     60    100     45     50      0
    2     P02     52     62    101     47     48      0
    3     P03     48     63    102     46     49      0
    4     P04     51     58    103     44     51      0
    5     P05     50     60    100     45     50      0
    6     P06    120    190    100     45     50      1
    7     P07    125    195    101     47     48      1
    8     P08    122    192    102     46     49      1
    9     P09    118    188    103     44     51      1
    10    P10    121    191    100     45     50      1
    11    P11     51     59    100     45     50      0
    12    P12     53     61    101     47     48      0
    13    P13     49     57    102     46     49      0
    14    P14     50     58    103     44     51      0
    15    P15     52     60    100     45     50      0
    16    P16    130    200    100     45     50      1
    17    P17    128    198    101     47     48      1
    18    P18    126    196    102     46     49      1
    19    P19    124    194    103     44     51      1
    20    P20    129    199    100     45     50      1
    21    P21     49     61    100     45     50      0
    22    P22     51     59    101     46     49      0
    23    P23     50     62    102     47     48      0
    24    P24     52     60    103     44     51      0
    25    P25     48     58    100     45     50      0
    26    P26    123    193    101     47     48      1
    27    P27    127    197    102     46     49      1
    28    P28    125    195    103     44     51      1
    29    P29    122    192    100     45     50      1
    30    P30    130    200    101     47     48      1



```python
trans[trans$Cancer == 0, "Gene.A"]
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>50</li><li>52</li><li>48</li><li>51</li><li>50</li><li>51</li><li>53</li><li>49</li><li>50</li><li>52</li><li>49</li><li>51</li><li>50</li><li>52</li><li>48</li></ol>




```python
geneA <- t.test(trans[trans$Cancer == 0, "Gene.A"], trans[trans$Cancer == 1, "Gene.A"])

print(geneA)
```

    
    	Welch Two Sample t-test
    
    data:  trans[trans$Cancer == 0, "Gene.A"] and trans[trans$Cancer == 1, "Gene.A"]
    t = -72.08, df = 18.502, p-value < 2.2e-16
    alternative hypothesis: true difference in means is not equal to 0
    95 percent confidence interval:
     -76.42712 -72.10622
    sample estimates:
    mean of x mean of y 
      50.4000  124.6667 
    



```python
geneB <- t.test(trans[trans$Cancer == 0, "Gene.B"], trans[trans$Cancer == 1, "Gene.B"])
print(geneB)
```

    
    	Welch Two Sample t-test
    
    data:  trans[trans$Cancer == 0, "Gene.B"] and trans[trans$Cancer == 1, "Gene.B"]
    t = -127.96, df = 19.83, p-value < 2.2e-16
    alternative hypothesis: true difference in means is not equal to 0
    95 percent confidence interval:
     -136.9988 -132.6012
    sample estimates:
    mean of x mean of y 
     59.86667 194.66667 
    



```python
geneC <- t.test(trans[trans$Cancer == 0, "Gene.C"], trans[trans$Cancer == 1, "Gene.C"])
print(geneC)
```

    
    	Welch Two Sample t-test
    
    data:  trans[trans$Cancer == 0, "Gene.C"] and trans[trans$Cancer == 1, "Gene.C"]
    t = -0.15404, df = 27.961, p-value = 0.8787
    alternative hypothesis: true difference in means is not equal to 0
    95 percent confidence interval:
     -0.9532391  0.8199057
    sample estimates:
    mean of x mean of y 
     101.2000  101.2667 
    



```python
geneD <- t.test(trans[trans$Cancer == 0, "Gene.D"], trans[trans$Cancer == 1, "Gene.D"])
print(geneD)
```

    
    	Welch Two Sample t-test
    
    data:  trans[trans$Cancer == 0, "Gene.D"] and trans[trans$Cancer == 1, "Gene.D"]
    t = -0.33466, df = 27.886, p-value = 0.7404
    alternative hypothesis: true difference in means is not equal to 0
    95 percent confidence interval:
     -0.9495889  0.6829222
    sample estimates:
    mean of x mean of y 
     45.40000  45.53333 
    



```python
geneE <- t.test(trans[trans$Cancer == 0, 6], trans[trans$Cancer == 1, 6])
print(geneE)
```

    
    	Welch Two Sample t-test
    
    data:  trans[trans$Cancer == 0, 6] and trans[trans$Cancer == 1, 6]
    t = 0.33466, df = 27.886, p-value = 0.7404
    alternative hypothesis: true difference in means is not equal to 0
    95 percent confidence interval:
     -0.6829222  0.9495889
    sample estimates:
    mean of x mean of y 
     49.60000  49.46667 
    



```python
# Initialize an empty vector to store p-values, using the gene names as indices
p_values <- numeric()

# Loop through each gene (columns 2 to 6 for genes)
for (gene in 2:6) {
  # Perform t-test comparing cancer vs non-cancer for each gene
  t_test_result <- t.test(trans[trans$Cancer == 0, gene],
                          trans[trans$Cancer == 1, gene])

  # Store the p-value in p_values, using the column name (gene) as the index
  p_values[colnames(trans)[gene]] <- round(t_test_result$p.value, 3)
}

# Print the p-values
print(p_values)

```

    Gene.A Gene.B Gene.C Gene.D Gene.E 
     0.000  0.000  0.879  0.740  0.740 

