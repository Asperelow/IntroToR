x <- TRUE
if(x){
  print("The loop executed")
} else if(x){
  print("hmmm")
} else {
  print("The loop did not execute")
}

x <- c("a", "b", "c", "d")
for(i in seq_along(x)){
  print(x[i])
}
for(letter in x){
  print(letter)
}
for(i in 1:4) print(x[i])

x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

count <- 0
while(count < 10){
  print(count)
  count <- count + 1
}

repeat {
  # Do something
  if(x >=1){
    break
  }else
    x <- x + 1
}

add2 <- function(x, y){
  x + y
}

above(x, n = 10){
  use <- x > n
  x[use]
  
}



