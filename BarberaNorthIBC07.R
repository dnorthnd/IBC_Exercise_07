setwd("/Users/carlybarbera/Desktop/Biocomputing_Junk")
wages <- read.csv("wages.csv")
evenstevens <- function(x){
  x[seq(1,nrow(x), by=2),]
}
evenstevens(wages)

iris <- read.csv("iris.csv")

# function to return number of rows for a given species
rowcount <- function(x, y){
  count <- sum(x == y)
  return(count)
}
rowcount(iris, "setosa")  


# function to return a dataframe with sepalwidth
# greater than specified value
widthcount <- function(x,y,z){
  width <- as.data.frame(x[y > z,])
  return(width)
} 
widthcount(iris, iris$Sepal.Width, 3.5)  
  

# write the data for a given species to a commma del file
# with the given species name as the file name 

speciescsv <- function(x,y,z){ 
  write.csv(x[y == z,], file = paste(z, "csv", sep = "."))
  }
}
speciescsv(x = iris, y = iris$Species, z = "setosa")


# Stuart is putting stuff on the board 
# for a question I'm not sure is actually in ex 07
# he is saying to do a count of a subset of a certain species
# that has a certain trait value greater than whatever

#treeCounts <- function(x,taxa,value){
#subset<- x[x$species == taxa,]
# treeNum <- sum(subset$dbh > value)
#return(treeNum)
#}

#I'm still confused - where does it ask for this?




 
  
