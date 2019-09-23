# fonction triangle rectangle
rec_tri <- function(a, b, c){
  sort_elt <- sort(c(a, b, c))
  return((sort_elt[3])^2 ==  (sort_elt[2])^2 + (sort_elt[1])^2)
}

# test1
rec_tri(4,5,3)
rec_tri(4,2,3)
