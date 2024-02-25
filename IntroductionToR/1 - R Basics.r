## isntall packages
install.packages("tidyverse")
library("tidyverse")

#read dataset
my_data <- read.csv("dataset/pizza_order_dataset.csv")

head(my_data)

# Start your analysis
my_data %>%
  select(order_id,item_name, item_price,quantity) %>%
  filter(item_price > 31)

## function data for see all dataset the exammple from R
data()
View(starwars)

