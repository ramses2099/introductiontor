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

## built function R
    - mean
    - median
    - hist
    - plot
    - cor.test()

## read csv file
    - read.csv("C:/Users/ramse/Source/R/introductiontor/dataset/pizza_order_dataset.csv")

## help for function
    - ?function_name
    - ?plot


## create project
------------------------
- Creating a project
- Importing data
    -my_data <- read.csv("dataset/pizza_order_dataset.csv")
    - head(my_data)
    - tail(my_data)
    - View(my_data)
- Installl packages
- Data manipulation


## Rows are observations
## Columns are variables
    - my_data[1,3]
    - my_data[ ,3]
    - my_data$item_price

## Install and use packages
## Packages have programmed functions that solve specific problems
## and expand the R vocabulary
    - install.pachages("tidyverse")
    - library("tidyverse")
    - require("tidyverse")
## tidyverse includes packages like dplyr and ggplot2
    - glimpse(my_data)
```
# Start your analysis
my_data %>%
  select(order_id,item_name, item_price,quantity) %>%
  filter(item_price > 31)
```

## R programming 101
----------------------------------
```
library(readxl)
dataset <- read_excel("dataset/pizza_order_dataset.xlsx",
sheet="position", range="C4:G14", na="**")
View(dataset)
```

## R programming 101
----------------------------------
    - Use built in dataset
    - Use Tidyverse package to 
    - Select variables
    - Filter observation
    - Create a new variable
    - Create a summary

```
require(tidyverse)
## function data for see all dataset the exammple from R
data()
View(starwars)

starwars %>%
  select(gender, mass, height, species) %>%
  filter(species=="Human") %>%
  na.omit() %>%
  mutate(height = height /100) %>%
  mutate(BMI = mass /height^2) %>%
  group_by(gender) %>%
  summarise(Average_BMI = mean(BMI))

```


