## Data type in R

- Logical -> TRUE, FALSE
- Numeric -> 10.5,7854
- Integer -> 3L,40L
- Complex -> 3+2i
- Character -> 'a','hello'
- Raw -> 'Hello' is stored as 48 65 6c


## Logical Operators

## And - & = Returns TRUE if both the conditions are true, else return FALSE

## Or - | = Returns TRUE if any one of the conditions results in TRUE

## Not - ! = Takes each element of the vector and gives the opposite logical value

## Arithmetic operator

- addition -> +
- subtraction -> -
- multiplication -> *
- division -> /

## Order of operation priority parenthesis () first, Exponent ^, multi and div (left to right)

## read dataset
    - auction.data <- read.csv("c:\\example\\auction.csv)

## View(var name)
    - View(auction.data)

## Print Formatting
    - R uses the print() function to display the variables

## R uses the paste() and paste0() functions to format strings and variables together for printing in a few different
    - print(paste('hello','world'))
        - "hello world"
    - print(paste('hello','world', sep='-'))
        - "hello-world"
    - paste0('hello','world')
        - "hellloword"
    - paste0('Welcome','to','R')
        - "WelcometoR"

## <- is the assingment operator
    - n <-  120
    - [1] : 120

