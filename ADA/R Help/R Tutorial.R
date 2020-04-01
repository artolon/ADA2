##R AS A CALCULATOR................................................................................
2+2
(4+6)/2
10^2
a <-3
a
(6+10+9+8+12)/5

((6-9)^2 + (10-9)^2 + (9-9)^2 + (8-9)^2 + (12-9)^2)/(5-1)

sqrt(((6-9)^2 + (10-9)^2 + (9-9)^2 + (8-9)^2 + (12-9)^2)/(5-1))

##DATA TYPES IN R.................................................................................

#Assign the value of 12 to a variable called months
months <- 12

#Use the variable months in an expression 
2*months

#Assign the value of 15 to the word "days";
#Assign the value of 2 to the word "hours"
#Multiply days and hours
days <- 15
hours <- 2
days*hours

#Assign the value of 4.5 to a variable called "a"
a <- 4.5

#Use the class command to determine the data type of "a"
class(a)

#Assign the value of 4 to a variable called "b"
b <- 4
class(b)

#Specify the code, so that R recognizes "b" as an integer 
b <- as.integer(4)
class(b)

#Use the as.integer command to truncate the variable "a"
as.integer(a)

##Logical data type includes the values of TRUE and FALSE and is often created when values are compared
#Make variables "c" and "d" with values of 6 and 8 
c <- 6
d <- 8

#Is "c" larger than "d"? Store answer in variable "e" 
e = c > d

#print e
e

#Determine the data type of e
class(e)

#Make variables fname, mname, lname with values of Kimberly, Jean, Johnson
fname <- "Abbie"
mname <- "Rose"
lname <- "Teurbe-Tolon"

#Check the class
class(fname)

#assign fname mname lname to a new variable called "full" and print the variable
full <- paste(fname, mname, lname)
full

#Extract the first three letters of lname
substr(lname, start=1, stop=3)

#Extract characters 2 through 6 from your full name variable 
substr(full, start=2, stop=6)

##VECTORS AND LISTS...............................................................................

#Create numeric vector x
x <- c(1, 2, 3, 4)
x

#Create logical vector y
y <- c(T, F, F, T)
y

#Add 3 to each element in the x vector
x + 3

#Add 1 to the first element of x, add 2 to the second element, etc.
x + c(1,2,3,4)

#Multiply each element of x by 5 
x*5

#remove every other element of vector x
x[c(T, F)]

#Subtract 1 from each element and then divide by 5
(x-1)/5

#Add 3 to x, assign the new vector to the name "x," and then divide the new vector by 10
x <- x + 3
x

x <- x/10
x

#Back to the original vector x
x <- c(1,2,3,4)

#Add 3 and divide by 10 (in one step)
x <- (x+3)/10
x

#"list" data type is similar to a vector, but can include entires of different types
a <- c(1,3,5,7)
mylist <- list(fruit="blueberries", age=9.26, mynumbers=a, mygoal=TRUE)
mylist
class(mylist)

#Write the R commands to create a vector that includes the day, month, year of your birthday.
#Substract 2 from each element of your vector, divide each resulting element by 10, and remove the middle number. 
#Use as few steps as you can to get the final answer. 
z <- c(8, 6, 1993)

z2 <- (z-2)/10
z2

z2[c(T,F,T)]

#MATRICES.........................................................................................
##A matrix is information or data elements, stores in a rectangular format
#with rows and columns. We can perform operations on matrices like we did with vectors. 
#Example
z = matrix(c(1, 2, 3, 4, 5, 6), #the data in the matrix 
          nrow=2,         #the number of rows
          ncol=3,         #number of columns
          byrow=TRUE)     #fill the matrix by rows 

#print matrix z
z

#Say your matrix is the number of red, green, and yellow jelly beans that your son
#and daughter received in their easter baskets. You can name the columns and rows so you
#remember which is which by using the dimnames command, like this:
dimnames(z)=list(
    c("son", "daughter"),        #row names
    c("red", "green", "yellow")) #column names
z

#Choose three people you know well and create a matrix that includes the years they were 
#born, the years they graduated high school, and the years they graduated college. With 
#3 people and 3 numbers, the matrix will have nine entries. Add names to the columns and rows
#Print the matrix. 

#Arianne was born in 1993, graduated H.S. in 2011, and college in 2015
#Elaine was born in 1991, graduated H.S. in 2010, and college in 2014
#Tori was born in 1996, graduated H.S. in 2014 and college in 2018

h = matrix(c(1993, 2011, 2015, 1991, 2010, 2014, 1996, 2014, 2018),
           nrow=3,
           ncol=3,
           byrow=TRUE)
dimnames(h)=list(
  c("Arianne", "Elaine", "Tori"),
  c("Birth Year", "H.S. Grad", "College Grad"))
h

##LOADING DATA INTO R......................................................................
#Type the sample data into Windows notepad and save for the following exercises
##sep="," tells R the items in the data are separated by a comma
##the header=TRUE tells R there is a row at the top with variable names in it
starb <- read.table(file.choose(), sep=",", header=TRUE)

#Use various commands to learn more about the data set 
class(starb)               #tells you what starb is
class(starb$drink)         #tells you what class the drink variable in starb is
class(starb$calories)      #tells you what class the calories variable in starb is
names(starb)               #gives you the variable names in the starb data set
summary(starb)             #summarizes the starb data set 

starb[1,]                       #show the whole first row 
starb[1,2]                      #show the first row, second column
starb$drink[starb$calories==0]  #show starb drinks with 0 calories
starb$drink[starb$calories<200] #show starb drinks with <200 calories

#create another dataset in Windows notepad of 5 people you know with names/ages. 
#Look at the data and print a summary
nameage <- read.table(file.choose(), sep=",", header=TRUE)
class(nameage)
class(nameage$first.name)
class(nameage$age)
names(nameage)
summary(nameage)

##WORKING WITH PACKAGES.....................................................................
install.packages('ggplot2', repos = "http://cran.rstudio.com/")
library(ggplot2)

#Try making a graph of the calories in the Starbucks data with these commands:
ggplot(starb, aes(x=drink, y=calories))+
  geom_bar(stat="identity")+
  ggtitle("Starbucks drink calories")
