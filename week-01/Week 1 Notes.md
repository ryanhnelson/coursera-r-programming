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

## Data Types - R Objects and Attributes
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