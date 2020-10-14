# Task #1 from Exercise 07
# GCR 10-14-2020
# Write R code that replicates the functionality of the head function we used in Linux. Your code should
# define a variable with the file to return lines from and a variable representing the number of lines to be
# returned from the top of the indicated file. The selected file content should be printed to the terminal
# in R.

head <- function (filename, numlines)
{
  data <- read.csv(file = filename, header = TRUE, sep = ",")
  data[1:numlines, ]
}
head("wages.csv", 1)