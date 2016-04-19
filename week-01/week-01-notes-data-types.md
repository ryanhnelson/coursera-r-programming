# Week 1 Notes: Console Input and Data Types

## R Console Input and Evaluation
The <- symbol is the assignment operator.

```R
## Creating expressions
x <- 1
msg <- "hello"
```

To evaluate an expression, you can evaluate the expression and the value will be returned:
```R
print(x)
```

## R Data Types: Objects and Attributes
R has five basic or "atomic" classes of objects:

* Character
* Numeric (real numbers)
* Integer
* Complex
* Logical (true/false)

Numbers in R are normally double-precision numerics. Integers must be explicit:
```R
## Assigning a value of 1 to X, as an integer
x <- 1L

## Testing if x is an integer type
is.numeric(x)
```

R objects can have attributes (names, dimensions, class, length, and user-define attributes)

## R Data Types: Vectors and Lists
The c() function, concatenate, can be used to create vectors of objects.
```R
x <- c(0.5, 0.6)  ## numeric
x <- c(TRUE, FALSE)  ## logical
x <- c(T, F)  ## logical
x <- c("a", "b", "c")  ## character
x <- c(9:29)  ## integer
x <- c(1+0i, 2+4i)  ## complex
```

Using the vector() function
```R
x <- vector("numeric", length = 10)
```
coercion occurs when objects are mixed in a vector. Coercion forces all elements in the vector to be of the same class.

Coercion can also be forced:
```R
x <- 0:6
class(x)  ## integer
as.numeric(x)  ## coerces x to numeric
as.logical(x)  ## coerces x to be TRUE/FALSE
as.character(x)  ## character coercion
```
Nonsenical coercion doesn't work:
```R
x <- c("a", "b", "c")
as.numeric(x)  ## Returns NA, and generally pisses off R
```

## R Data Types: Matrices
Matrices are vectors with a dimension attribute:
```R
m <- matrix(nrow = 2, ncol = 3)  ## Creating a matrix with 2 rows and 3 columns
dim(m)  ## Displaying dimensions of the matrix(m)
attributes(m)  ## Shows that the dimensions of the matrix are an attribute
```

Matrices are constructed column-wise, so entries start in the upper-left corner and run down the columns:
```R
m <- matrix(1:6, nrow = 2, ncol = 3)
```

One can create a vector, then apply a dimension attribute to form a matrix:
```R
m <- 1:10  ## Create a vector of length 10
dim(m) <- c(2, 5)  ## Applies dimension attribute of 2 columns and 5 rows
```

cbind and rbind are for row binding and column binding respectively:
```R
x <- 1:3
y <- 10:12
cbind(x,y)  ## Creates a matrix by binding columns
rbind(x,y)  ## Creates a matrix by binding rows
```

## R Data Types: Factors
Factors represent categorical data. Factors can be ordered or unordered, and are thought of in terms of labels -- as integer vectors where each integer has a label.
```R
x <- factor(c("yes", "yes", "no"))  ## Creating a factored series of responses
table(x)  ## Calling x as a table based on its factors
```

To set orders of levels, or to set a baseline, use `levels =`:
```R
x <- factor(c("yes", "yes", "no"),
            levels = c("yes", "no"))
```

## R Data Types: Data Frames
Data frames are used to store tabular data:

 * Each element has the same length
 * Each column can be a different type
 * Data frames have a special attribute called `row.names`
 * Data frames are often created by calling `read.table()` or `read.csv()`, or by converting by calling `data.matrix()`

Example:
```R
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))  ## Apparently 1 and 2 are fucked up beyond all recognition?
```

## R Data Types: Names Attribute
R objects can have names:
```R
x <- 1:3  ## Creates vector(x)
names(x) <- c("foo", "bar", "norf")  ## Assigns names to vector
```