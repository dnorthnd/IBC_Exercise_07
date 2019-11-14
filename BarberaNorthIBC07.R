setwd("/Users/carlybarbera/Desktop/Biocomputing_Junk")
iris <- read.csv("iris.csv")

# function to return 
#odd rows of a dataframe
nootevenstevens <- function(x){
  x[seq(1,nrow(x), by=2),]
}
nootevenstevens(iris)



# function to return number of rows for a given species
rowcount <- function(x, y){
  count <- sum(x == y)
  return(count)
}
rowcount(x=iris, y="setosa")  


# function to return a dataframe with sepalwidth
# greater than specified value
widthcount <- function(x,y,z){
  width <- (x[y > z,])
  return(width)  
}
widthcount(iris, iris$Sepal.Width, 3.5)  

# write the data for a given species to a commma del file
# with the given species name as the file name 

speciescsv <- function(x,y,z){ 
  write.csv(x[y == z,], file = paste(z, "csv", sep = "."))
  }

speciescsv(x = iris, y = iris$Species, z = "setosa")







 
  
