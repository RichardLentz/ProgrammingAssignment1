complete <- function(directory, id = 1:332){
  
  setwd(directory)
  
  nobs <- NULL
  
  file_list <- list.files()
  
  for (file in file_list[id]){

    file_data <- read.csv(file)
    
    com <- complete.cases(file_data)
    
    nobs[file] <- sum(com)
    
    }
  
  
  
  data.frame(id, nobs)
  
}
