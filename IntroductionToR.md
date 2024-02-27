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
## Fundamentals of programming using R in RStudio
    - Coding in RStudio
    - Syntax for performing calculations

## %>%
    - Pipes make a sequence of code easier to work with and read

## R Packages
## Reusable functions and more

## Tidyverse
## Tidyverse packages
    - ggplot2 for visualization

## The basic concepts of R
    - Functions
    - Comments
    - Variables
    - Data types
    - Vectors
    - Ppies

## Functions (R)
A body of reusable code used to perform special tasks in R

## Argument (R)
Information that a function in R needs in order to run

## print("Hello, World!")

##?print help

## Variable (R)
A representation of a value in R that can be stored for use later during programming

-A variable name should start with a letter and can also contain numbers and underscores

## Vector (R)
A group of data elements of the same type stored in a squence in R

## function conbine c()
    - vec_1  <- c(2,3,34,34)

## Pip (R)
A tool in R for expressing a sequence of multiple operations, represented with %>%

## Operator
- A symbol that names the type of operation or calculation to be performed in a formula

## Arithmetic operators
- Used to complete math calculations
    +,-,*,/

## Packages include
- Reusable R functions
- Documentation about the functions
- Sample datasets
- Tests for chekcing your code

## Base R
## libary()

## CRAN (Comprehensive R Archive Network)
- An online archive with R packages, source code, manuals, and docuemntation

""" 
Packages offer a helpful combination fo code, reusable R fucntions, descriptive documentation, test for checking oparbility, and sample data sets
""""

## Tidyverse (R)
A system of packages in R with a common design philosophy for data manipulation, exploration, and visualization

## install.packages("tidyverse")

## library("tidyverse")

"""
Conflicts happen when packages have functions with the same
names as other functions
"""
## 8 core tidyverse packages
    - ggplot2
    - tibble
    - tidyr
    - readr
    - purrr
    - dplyr
    - stringr
    - forcats

## Update.packages() will update all of your package
## Install.packages("package name") will update one package

## Conflict notifications jare just one type of message
## that can show up in the console

## You might find warnings and messages as well

## Four packages that are an essantial part of the workflow for data analysts:
    - ggplot2
    - dplyr
    - tidyr
    - readr

## ggplot2(R)
- Create a variety of data viz applying different visual properties to the data variables in R

## tidyr(R)
A package used for data cleaning to make tidy data

## readr(R)
Used for importing data

## dplyr(R)
Offers a consistent set of functions that help you complete some common data manipulation tasks

## Factors(R)
Store categorical data in R where the data values are limited and usually based
on a finite group like country or year

## Nested
In programming, describes code that performs a particular fuction and is contained within code that performs a broader function

- Call up data(and then)
- Group the data(and then)
- Summarize the grouped data using a mean function

## Nested function
A function that is completely contained within another fuction

## Keyboard shortcuts for inserting pipe operators
    - PC/Chromebook: ctrl+shift+m

## When using pipes:
    - Add the pipe operator at the end of each line of the piped
    operation except the last one
    - Check your code after you've programmed you pipe
    - Revisit piped operations to check for parts of your code to fix

"Learning coding was revolutionary for my job"

"""
An important aspect of any type of script or when you are coding, is to structure it for overall readability.
"""

"""
An important aspect for readability and overall understanding of your code
is using comments
"""

"""
Documentation wil explain in depth exactly your code is doing, why i was built, 
what is the purpose for it and any limitations.
"""

""" Building it for scalability as well as meking it dynamic """

## Data Frame
    - A collection of columns
    
    - Columns should be named
    - Data stored can be many different types, like numeric, factor or character
    - Each column should contain the same number of data items

## Tibbles are like streamlined data frames
    - Never change the data types of the inputs
    - Never change the names of your variables
    - Never create row names
    - Make printing easier

## Tidy data (R)
A way of standardizing the organization of data within R

## Tidy data standards
    - Variables are organized into columns
    - Observations are organized into rows
    - Each value must have its own cell

## function R
    - head()
    - str()
    - colnames()
    - mutate()
        - mutate(dataset,colname=colname_org * 20)

## packages for cleaning data
    - Here
    install.packages("here")
    - Skimr
    - Janitor

## install package palmerpenguins
    - install.packages("palmerpenguins")

    - skim_without_charts()
    - glimpse()
        - glimpse(dataset)
    - head()
    - select()
    - rename()


## function for arrange data
    - arrange()
    - group_by()
    - filter()


## transform data function
    - separate()
    - unite()
    - mutate()

```
# create data frame
id <- c(1:4)
name <- c("Dag Batter","Richart Henniger","Tami Doers","Patrick Jaquet")	
department <- c("Marketin","Product Management","Services","Support")

employee <- data.frame(id, name, department)

print(employee)

# separate column
separate(employee, name, into=c('first name','last name'), sep=' ')

unite(employee, first name, last name, sep=' ')

penguins %>%
  mutate(body_mass_g=body_mass_g/100)

```

## Anscombe's quartet
    - Four datasets that have nearly identical summary statistics

## install.packages('Tmisc')

## install.packages('SimDesign')
## library('SimDesign')


## packages for data visualization
    - ggplot2
    - Plotly
    - Lattice
    - RGL
    - Dygraphs
    - Leaflet
    - Highcharter
    - gganimate
    - ggridges

## Benefits of ggplot2
    - Create different types of plots
    - Customize the look and feel of plots
    - Create high quality visuals
    - Combine data manipulation and visualization


## GGPLOT2
    - Aesthetics
    - Geoms
    - Facets
    - Labels and annotations


## Aesthetic (R)
- A visual property of an object in your plot

## Geom (R)
- The geometric object used to represent your data

## Facets
- Let you display smaller groups, or subsets, of your data

## Labels and annotations (R)
- Let you customize your plot

```
# Data visualization
# ggplot2 library

library("ggplot2")
library("palmerpenguins")

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))

```

## Start with the ggplot function and choose a dataset to work with
## Add a geom_function to display your data
## Map the variables you want to plot in the arguments of the aes() function

```
ggplot(data=<DATA>)+
    <GEOM_FUNCTION>(mapping=aes(<AESTHETIC MAPPINGS>))
```

"""
I felt imposter syndrome each and every day 
"""

"""
I want to make sure that I'm constantly learning and also leveraging my peers as a resource
"""

"""
How can I actually grow this area by giving me more work that will allow me to develop that skill set?
"""

## Aesthetic (R)
```
# Data visualization
# ggplot2 library

library("ggplot2")
library("palmerpenguins")


ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g,shape=species, color=species))

```

## Aesthetics for points 
    - X
    - Y
    - Color
    - Shape
    - Size
    - Alpha

## Geom (R) functions
    - geom_point
    - geom_bar
    - geom_line


## Facets (R)
- Let you display smaller groups, or subsets, of your data

## Facet functions
    - Facet_wrap()
    - Facet_grip()

## Annotate
    - To add notes to a document or diagram to explain or comments upon it
    - annotate("text",x=220,y=3500,label="The Gentoos are the largest")

## Export option
## ggsave() function

```
# Data visualization
# ggplot2 library

library("ggplot2")
library("palmerpenguins")


ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g,shape=species))

ggplot(data = penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g))

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))


ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g,color=species))+
  labs(title = "Palmer Penguins: Body mass vs. Flipper Length",subtitle = "Sample",
       caption = "Data collected by Dr. Kristen Gorma")

ggsave("graphics_plot.png")
```

## R Markdown
A file format for making dynamic doucments with R

## An overview of R Markdown
## How to install R Markdown in RStudio
## How to create an R Markdonw document
## The structure and components of the document
## How to insert and edi pieces of code called chunks in your document
## The process of exporting you documentation

## Markdown 
    - A syntax for formatting plain text files

## Markdown report output
    - Add a single undercore or asterisk

## R Notebook
    - Lets users run your code and show the graphs and charts that visualize the code
    - HTML, PDF, and Word documents

## HTML
    - The set of markup symbols or codes used to create a webpage

## Other notebook options
    - Jupyter
    - Kaggle
    - Google Colab

## R Markdown is a great tool for documenting your analysis at any stage

## Installing rmarkdown package
    - install.packages("rmarkdown")

## YAML
    - A language for data that translates it so it's readable

"""
LEarning any programming language is really empowering your only limits are you creativity and your curiosity.
"""

## Code chunk
    - Code added in an .Rmd file

## Delimiter
    - A character that indicates the begining or end of a data item

```{r} and ```

## What R Markdown is
## How to use R Markdown in RStudio to create .Rmd files
## Structure of these files and how to format them to make reports
## What code chunks are and how to invlude them in your documentation
## How to take all of your analyses and ftransoform it from an .Rmd file into a report


