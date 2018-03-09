### Function to replace "" with NA ####
Transform.blank.NA <- function(x){
  if (is.na(x)){
    return (NA)
  }
  else if (x == ""){
    return (NA)
  }
  else {
    return (x)
  }
}