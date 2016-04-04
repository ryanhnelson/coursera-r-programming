# Week 1 Notes: Reading Data, and Subsetting Data

## Reading Data
There are a few principle functions for reading data into R:
* `read.table`, `read.csv` for reading tabular data
* `readLines` for lines of a text file
* `source` for reading R code files
* `dget` same
* `load` for reading saved workspaces
* `unserialize`for reading R objects in binary form

## Reading Large Tables
Calculate how much memory would be required for your dataset. If more than memory, STAWP

Use `colClasses` where possible to set classes, which makes R read twice as fast:
```R
initial <- read.table("datatable.txt", nrows = 100)
classes <- sapply(initial, class)
tabAll <- read.table("datatable.txt",
                      colClasses = classes)
```

Each numeric requires roughly 8 bytes storage, therefore 1,500,000 rows and 120 columns 1.34GB

## Subsetting: Basics
* `[]` always returns object of same class as original
* `[[]]` extracts elements from a dataframe
* `$` extracts elements from list or dataframe by name

# Notes
Still need to finish off subsetting. Got bored for now; going to take the quiz.