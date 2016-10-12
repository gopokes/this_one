#Script for analyzing houseelf earlength dna data
library(stringr)
helf_dat<-read.csv("./data/houseelf_dna_data_1.csv",header=TRUE)
helf_gc<-function(sequence){
  g<-str_count(str_to_lower(helf_dat$dnaseq),pattern="g")
  c<-str_count(str_to_lower(helf_dat$dnaseq),pattern="c")
  dna<-str_length(helf_dat$dnaseq)
  gc<-((g+c)/dna)
  return(gc)
}
helf_gc(helf_dat)
