# Week 3 Notes: Programming with R

## Loop Functions: lapply

R has various loop functions:

* `lapply`: Loop a function on each element of a list
* `sapply`: Same as `lapply`, simplifies result
* `apply`: Apply a function over the margins of an array
* `tapply`: Apply a function over subsets of a vector
* `mapply`: Multivariate version of lapply

### lapply
Takes three arguments: (1) a list x; (2) a function; 
(3) other arguments via its ... argument. Actual
looping is performed interally in C.

Example:
```R
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)
  $a 3
  $b # Mean of randoms from rnorm
```
