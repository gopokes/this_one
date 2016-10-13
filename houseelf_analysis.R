#Script for analyzing houseelf earlength dna data
library(stringr)
source("classify_ear_size.R")
helf_dat<-read.csv("./data/houseelf_dna_data_1.csv",header=TRUE)
helf_gc<-function(sequence){
  g<-str_count(str_to_lower(helf_dat$dnaseq),pattern="g")
  c<-str_count(str_to_lower(helf_dat$dnaseq),pattern="c")
  dna<-str_length(helf_dat$dnaseq)
  gc<-((g+c)/dna)
  return(gc)
}


#Creating new dataframe
gc_content<-helf_gc(helf_dat)
id<-helf_dat$id
ear_length<-get_size_class(helf_dat$earlength)
helf_summary<-data.frame(id,ear_length,gc_content)
#Saving data frame as <FILE NAME>.csv
write.csv(helf_summary,file="helf_categorized",row.names=FALSE)

