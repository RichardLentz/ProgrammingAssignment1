
pollutantmean <- function(directory, pollutant, id = 1:332){

  

  file_list <- list.files()

for (file in file_list[id]){
  
  # if the merged dataset doesn't exist, create it
  if (!exists("dataset")){
    dataset <- read.csv(file, header=TRUE)
  }
  
  # if the merged dataset does exist, append to it
  if (exists("dataset")){
    temp_dataset <-read.csv(file, header=TRUE)
    dataset<-rbind(dataset, temp_dataset)
    rm(temp_dataset)
  }
  
}
data <- dataset[pollutant]

bad <- is.na(data)

a <- data[!bad]

b <- mean(a)

b
}

