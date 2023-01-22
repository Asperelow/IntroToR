print("First print statement using R")

print("And it is also backed on Github!")

# "x <-" Creates an array x and assigns a value
# "c()" can be used to create vectors of objects
x <- c(0.5, 0.6)      ## Numerical
x <- c(T, F)          ## Logical
x <- c("a", "b", "c") ## Character
x <- 9:29             ## integer
x <- c(1+0i, 2+4i)    ## complex

# vector() can also be used
x <- vector("numeric", length=10)
x

# matrix() constructs matrices column-wise
m <- matrix(nrow=2, ncol=2)
# A matrix can also be created by reshaping a vecor
m <- 1:10
m <- c(2,5)
# There is also cbind-ing and rbind-ing (col and row binding)
x <- 1:3
y <- 10:12
m <- cbind(x,y)
m <- rbind(x,y)
m

# A factor is a vector used to represent categorical data
# They are better than integer vectors because they are self describing 
#       i.e. Male/Female vs 1/0
x <- factor(c("yes", "yes", "no", "yes"))
unclass(x)

# You can explicitly state the levels so that yes comes before no
x <- factor(c("yes", "yes", "no", "yes"),
            levels = c("yes", "no"))
unclass(x)
x





























































