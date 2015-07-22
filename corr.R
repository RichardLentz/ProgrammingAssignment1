corr <- function(directory, threshold = 0){

 
  

  
  
  
 
  x <- NULL
 
  y <- NULL
  z <- NULL
  
  file_list <- list.files()
  
  for (file in file_list){
    
    file_data <- read.csv(file)
    
    com <- complete.cases(file_data)
    
    sm <- sum(com)
   
    if (sm > threshold){
      
      x <- file_data["sulfate"]
      
      y <- file_data["nitrate"]
      
      z[file] <- cor(x,y, use = "pairwise.complete.obs")
    }
      
    
        
   
   
  }
  
 
 as.vector(z) 
  
}