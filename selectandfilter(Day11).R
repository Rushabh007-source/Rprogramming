#----Data Manipulation in Data.Frames----

# select(): It is used to select columns of interest from a data set
# filter(): It filters the data based on a condition
# arrange(): It is used to arrange data set values on ascending or descending order
# mutate(): It is used to create new variables from existing variables
# summarise(with group_by): It is used to perform analysis by commonly used operations such as min, max, mean count etc.

# ?select()
#install.packages("dplyr")
library(dplyr)
# Creating data set by combining 4 variables of same length.
# Create a, b, c, d variables
a <- c(10,20,30,40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df

step_1_df <- select(df, a,b,c)
dim(df)
dim(step_1_df)
step_1_df

# filter()
# Select observations
select_f1 <- filter(df, b == "book")
select_f1
dim(select_f1)

select_f2 <- filter(df, c == "TRUE")
select_f2
dim(select_f2)

#use filter to filter data with required condition
mynewdata <- mtcars
filter(mynewdata, cyl > 4 & gear > 4 )
filter(mynewdata, cyl > 4)

#use select to pick columns by name
select(mynewdata, cyl,mpg,hp)

#here you can use (-) to hide columns
select(mynewdata, -cyl, -mpg ) 
# or use the command below
select(mynewdata, -c(cyl,hp))

#select series of columns
select(mynewdata, cyl:gear)