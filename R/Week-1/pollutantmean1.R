pollutantmean1<- function(directory, pollutant, id=1:332)
{
  m<-0
  total<-0
  print(total)
  file<-sprintf("%s/%03d.csv",directory,id)
  submean<- vector("numeric", length(id))
  for(i in seq_along(id))
  {
   subtotal<-0
    if(pollutant == "sulfate"){
    f<- read.csv(file[i])
    
      submean[i]<-mean(as.double(f[2]),na.rm=TRUE)
    print(f[2])
    print(subtotal)
     
     }

    
  }   
  
  return(mean(submean))
}
