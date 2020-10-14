# Task 2 from Exercise 07
# GCR 10-14-2020
# Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

# print the last 2 rows in the last 2 columns to the R terminal
dat <- read.csv(file = "iris.csv")
numrows = nrow(dat)
numcols = length(dat)
dat[(numrows-1):numrows, (numcols-1):numcols]

# get the number of observations for each species included in the data set
setosa =dat[dat[,5]=="setosa",]
paste("There are", nrow(setosa), "observations of the setosa species")
vers =dat[dat[,5]=="versicolor",]
paste("There are", nrow(vers), "observations of the versicolor species")
virg =dat[dat[,5]=="virginica",]
paste("There are", nrow(virg), "observations of the virginica species")

# get rows with Sepal.Width > 3.5
lgsep =dat[dat[,2]>3.5 ,]
lgsep

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
write.csv(setosa, file = "setosa.csv", row.names = FALSE)