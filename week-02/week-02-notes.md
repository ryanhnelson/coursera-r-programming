# Week 2 Notes: Programming with R

## Control Structures: If-else

R has various control structures:

* `if, else`: testing a condition
* `for`: execute a loop a fixed number of times
* `while`: execute a loop while a condition is true
* `repeat`: execute an infinite loop
* `break`: break the execution of a loop
* `next`: skip an interation of a loop
* `return`: exit a function

### If-else Example
```R
 # else is optional, and must be at the end
 
if(x > 3) {
  # do something
  y <- 10
} else {
  # do something else
  y <- 0
}

 # Multiple else statements can be added
 # for various conditions
```