 # Coursera R Programming by John Hopkin's University
 # Programming Assignment 3
 # Ryan Nelson
 # June 9, 2016

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
utils::View(care)

 # 3.1: 30-day mortality rates for heart attacks
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])

 # 3.2: Finding the best hospital in a state

best <- function(state, outcome) {
  require(plyr)
  require(dplyr)
  care <- read.csv("outcome-of-care-measures.csv")
  care <- dplyr::select(care, Provider.Number, Hospital.Name, State, 
                        Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, 
                        Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure,
                        Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
  care <- plyr::rename(care, c("Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia" = "Pneumonia", "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" = "Heart.Attack", "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" = "Heart.Failure"))
  care[, 4] <- as.numeric(care[, 4]) # Heart attack
  care[, 5] <- as.numeric(care[, 5]) # Heart failure
  care[, 6] <- as.numeric(care[, 6]) # Pneumonia
  valid_outcomes <- c("heart attack", "heart failure", "pneumonia")
  if (!state %in% care$State) {
    stop("invalid state")
  } else if(!outcome %in% valid_outcomes) {
    stop("invalid outcome")
  } else {
    if(outcome == "heart attack") {
      hosp_name <- care$Hospital.Name[which.min(care$Heart.Attack)]
    } else if(outcome == "heart failure") {
      hosp_name <- care$Hospital.Name[which.min(care$Heart.Failure)]
    } else {
      hosp_name <- care$Hospital.Name[which.min(care$Pneumonia)]
    }
    result <- hosp_name
    return(result)
  }

  }