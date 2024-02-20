# Basic Arithmetic operations

192+250 #addition
955-380 #Subtraction
20*100 #Multiplication
50/5 #Division
5^4 #Exponent
18%%7 #Modulo - returns the remainder
(500*2)+(80/2) #Order of operations
500*(2+1) #Order of operation

# Assigning variables
selling <- 500 #Assign variable1
cost <- 250 #Assign variable2
profi <- selling - cost #Assign variable3
profi

# Data types in R
num <- 3.7 #Decimals are part of the numeric class in R

i <- 10L #whole numbers are known as integers
typeof(i)

t <- TRUE #Boolean values part of logical class
f <- FALSE 

ch <- "HELLO" #Text/String values are known as characters
class(ch) #Checks the data type of a variable
typeof(ch) #Checks the data type of a variable

c <- 1+2i #R supports complex data type too
class(c)

length(ch)

#using the print function
print("hey") #Prints hey on the screen

y <- 20
print(y) #Prints the value of y

x <- mtcars
print(x) #Prints the mtcars dataset

View(mtcars)

print(paste('hello','students'))

print(paste('hello','studnets',sep=',')) #Sep is for the chosen separator between the pasted items

paste0('hello','students') #Displays without space

sprintf("%s is %f feet tall","Ashley", 5.1) #Returns a character vector containing a formatted combination

# Vectors in R

# Basic type of R object is a vector
# Empty vector can be crated with vector() function, A vector can contain objects of type/class.
# Note** List is a vector which can contain objects of different classes

# Vectors: A vector is a sequence of data elements of the same basic type
# We use the c() function to declare a vector

v1 <- c(1,2,3,4) # example of vector creation
print(v1)




