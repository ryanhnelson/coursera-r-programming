# Coursera R Programming Week 1 Quiz

### 1. The R language is a dialect of which of the following programming languages?
Answer: S

### 2. The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition? Select all that apply.
The four freedoms:
* The freedom to run the program as you wish, for any purpose (freedom 0).
* The freedom to study how the program works, and change it so it does your computing as you wish (freedom 1). Access to the source code is a precondition for this.
* The freedom to redistribute copies so you can help your neighbor (freedom 2).
* The freedom to distribute copies of your modified versions to others (freedom 3). By doing this you can give the whole community a chance to benefit from your changes. Access to the source code is a precondition for this.

### 3. In R the following are all atomic data types EXCEPT:
Atomic data types:
* Character
* Numeric (real numbers)
* Integer
* Complex
* Logical (true/false)

### 4. If I execute the expression x <- 4L in R, what is the class of the object 'x' as determined by the `class()` function?
Answer: integer

### 5. What is the class of the object defined by the expression `x <- c(4, "a", TRUE)`?
```R
x <- c(4, "a", TRUE)
class(x)

> class(x)
[1] "character"
```

### 6. If I have two vectors `x <- c(1,3, 5)` and `y <- c(3, 2, 10)`, what is produced by the expression `cbind(x, y)`?
```R
x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x, y)

> cbind(x, y)
     x  y
[1,] 1  3
[2,] 3  2
[3,] 5 10
```

Answer: a matrix with 2 columns and 3 rows

### 7. A key property of vectors in R is that
Answer: elements of a vector all must be of the same class

### 8. Suppose I have a list defined as `x <- list(2, "a", "b", TRUE)`. What does `x[[1]]` give me? Select all that apply.
Answers:
* a numeric vector containing the element 2.
* a numeric vector of length 1.

### 9. Suppose I have a vector `x <- 1:4` and a vector `y <- 2`. What is produced by the expression `z <- x + y`?
Answer: a numeric vector with elements 3, 4, 5, 6.

### 10. Suppose I have a vector `x <- c(3, 5, 1, 10, 12, 6)` and I want to set all elements of this vector that are less that 6 to be equal to zero. What R code achieves this? Select all that apply.
* `x[x < 6] <- 0`
* `x[x <= 5] <- 0`
* `x[x %in% 1:5] <- 0`

### 11. Use the [Week 1 Quiz Data Set](https://d396qusza40orc.cloudfront.net/rprog/data/quiz1_data.zip) to answer questions 11-20. In the dataset provided for this Quiz, what are the column names of the dataset?
```R
quiz <- read.csv("hw1_data.csv")
head(quiz)
```
Answer: Ozone, Solar.R, Wind, Temp, Month, Day

### 12. Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
```R
quiz[1:2,]
```
Answer:
```R
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
```

### 13. How many observations (i.e. rows) are in this data frame?
```R
quiz
```
Answer: 153

### 14. Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
```R
quiz[152:153,]
```
Answer:
```R
    Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
```

### 15. What is the value of Ozone in the 47th row?
```R
quiz[47,"Ozone"]
```
Answer: 21

### 16. How many missing values are in the Ozone column of this data frame?
```R
table(factor(is.na(c(quiz$Ozone))))[2]
```
Answer: 37

### 17. What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
```R
mean(quiz$Ozone[!is.na(c(quiz$Ozone))])
```
Answer: 42.12931

### 18. Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
```R
summer <- complete.cases(quiz$Ozone, quiz$Solar.R, quiz$Temp)
mean(quiz$Solar.R[summer & quiz$Ozone > 31 & quiz$Temp > 90])
```
Answer: 212.8

### 19. What is the mean of "Temp" when "Month" is equal to 6?
```R
mean(quiz$Temp[quiz$Month == 6])
```
Answer: 79.1

### 20. What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
```R
max(quiz$Ozone[quiz$Month == 5], na.rm=TRUE)
```
Answer: 115