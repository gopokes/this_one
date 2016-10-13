get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
