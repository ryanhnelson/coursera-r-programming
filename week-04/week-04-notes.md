# Week 4 Notes: Programming with R

## The str Function

str: Compactly display the internal structure of an R object.
Can be used for checking data and functions, and gives a tighter view of information than may be visible in other functions like summary().
"I think it's the most useful function in all of R."

## Simulation - Generating Random Numbers
* `rnorm`: generate random Normal variates
* `dnorm`: evaluate the Normal probability at a point or vector of points
* `pnorm`: evaluate the cumulative distribution for a Normal distribution
* `rpois`: generate random Poisson variates with a given rate

Distributions usually have four functions associated with them:

* D, density
* R, random number generation
* P, cumulative distribution
* Q, quantile functions

Seeds are awesome for creating deterministic random numbers. Also crucial for reproducible research!

## Simulation - Simulating a Linear Model
Assume a model ```y = Bo + B1x + e```, where B1 = 0.5 & B1 = 2.

```R
set.seed(20)
x <- rnorm(100)
e <- rnorm(199, 0, 2)
y <- 0.5 + 2 * x + e

plot(x, y)
```

rbinom can also be used in an instance where it's a True/False or 0/1 distribution:
```R
x <- rbinom(100,1, 0.5)
```

## Simulation - Random Sampling
Here are some examples of random sampling usage
```R
set.seed(1)
sample(1:10, 4) # Four random integers, no replacement
sample(letters, 5) # Five random letters, no replacement
sample(1:10, replace = TRUE) # 10 w/replacement
```

## R Profiler
R profiler is a tool to check where code is taking a lot of time, and also give hints on how to potentially optimize what's happening:
* How much time is spent in different parts of a program
* Useful for optimizing
* Helps avoid time sinks when running, for example, 1000 iterations of code
* Better than guessing

General rule: YOU SHOULDN'T WORRY ABOUT OPTIMIZING YOUR CODE.
More specifically, don't worry about it at first.
> We should forget about small efficiencies, say about 97% of the time: premature optimization is the root of all evil.
 -- Donald Knuth

Get code to run first, and worry about speeding up, analyzing, and optimizing your code after you've got it working.

Example:
```R
system.time() # The amount of time taken to run an expression
 # (can be long and wrapped in {})
```
That's fucking cool. At least for smaller, simple programs where you can select a chunk for checking.

## R Profiler, Part 2
```Rprof()``` is the function that starts the profiler in R.
```summaryRprof()``` is useful for summarizing the info from Rprof.

R profiler default sampling time is 0.2 seconds.
Way cool stuff as well. Rad.

Nota Bene: C and Fortran code is not profiled, if it's been inserted into the code stack. BFD.
