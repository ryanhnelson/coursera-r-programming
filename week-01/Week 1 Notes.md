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
1. Character
2. Numeric (real numbers)
3. Integer
4. Complex
5. Logical (true/false)

Numbers in R are normally double-precision numerics. Integers must be explicit:
```R
## Assigning a value of 1 to X, as an integer
x <- 1L

## Testing if x is an integer type
is.numeric(x)
```

R objects can have attributes (names, dimensions, class, length, and user-define attributes)