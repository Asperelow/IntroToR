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

# Missing values
x <- c(1, 2, NaN, NA, 4)
is.nan(x)
is.na(x)

# Data frames is a key datatype in R
# They are a special type of list, columns do not need to be the same type
# Every row has a name. Can also be converted to a matrix
x <- data.frame(foo =1:4, bar = c(T, T, F, F))
x

# All objects can have names! 
x <- 1:3
names(x) <- c("foo", "bar", "norf")
x

m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

# You can subset with [] and [[]]
# [] returns the same datatype you are sub-setting (vector for vector, etc..)
# [[]] returns the element of the data you are sub-setting
x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[[1]]
x[2:4]
x[x > "a"]

u <- x > "a"
x[u]

# Sub-setting nested elements of a list
x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x
x[c(1,3)]
x[[1]][[3]]

# Sub-setting elements of a matrix
x <- matrix(1:6, 2, 3)
x[1, 2]               # Returns 3 as a vector w/ length 1
x[1, 2, drop=FALSE]   # Returns 3 as a 1x1 matrix

# Sub-setting - partial matching
x <-list(aardvark = 1:5)
x$a                   # returns aardvark because it partially matches              
x[["a"]]              # This will return null, it expects an exact match
x[["a", exact = F]]   # returns aardvark because it partially matches

# Lets try removing missing values from an array
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, NA, NA, "f")
good <- complete.cases(x,y)
x[good]
y[good]
good














































