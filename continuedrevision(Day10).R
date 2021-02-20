#Hence, using apply() fxn instead of Loops make execution faster & code simpler.

# Apply() fxn:
# Example:Sum a matrice over all the columns
m1 <- matrix(C<-(1:10),nrow=5, ncol=6)
m1
a_m1 <- apply(m1, 2, sum)
a_m1
class(a_m1)
str(a_m1)
a_m2 <- apply(m1, 1, mean)
a_m2
class(a_m2)
str(a_m2)

# Note:apply() returns output in vector, list or array.

# lapply() fxn:
# Example: Change the string value of matrix to lower case with tolower function.
movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
str(movies_lower)

# sapply() fxn:
# Example: Measure the minimum speed and stopping distances of cars from the cars dataset.

?cars
dt <- cars
lmn_cars <- lapply(dt, min)
smn_cars <- sapply(dt, min)
lmn_cars
smn_cars

lmxcars <- lapply(dt, max)
smxcars <- sapply(dt, max)
lmxcars
smxcars

# Note: 
# sapply() returns output in vector/matrix whereas 
# lapply() retuns output in list.