pollutantmean <- function(directory, pollutant, id=1:332)
{
  
  DATAFILE<-sprintf("%s/%03d.csv",directory,id)
  
file_as_list <- vector("list", length(id))
mean_list <- vector("double", length(id))
  selected_data<-data.frame()
  
  for (i in seq_along(file_as_list))
  {
    file_as_list[[i]] <- read.csv(DATAFILE[i])
    if(pollutant == "nitrate")
    {
      mean_list[i]<- lapply(file_as_list[i], mean,na.rm=TRUE)
    }
    
    if(pollutant == "sulfate")
    {
      m <- mean(selected_data, na.rm =TRUE)
      
      #print(file_as_list[[i]]$sulfate)
    }
  }
  return(m)
}