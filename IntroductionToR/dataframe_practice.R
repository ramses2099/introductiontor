## diamonds dataset
library("here")
library("skimr")
library("janitor")
library("palmerpenguins")

head(penguins)
skim_without_charts(penguins)

glimpse(penguins)

penguins %>%
  arrange(bill_length_mm)

penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarise(mean_bill_length_mm=mean(bill_length_mm))

penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarise(max_bill_length_mm=max(bill_length_mm))

penguins %>%
  group_by(species,island) %>%
  drop_na() %>%
  summarise(max_bl =max(bill_length_mm), mean_bl=mean(bill_length_mm))

penguins %>%
  filter(island == "Dream")


# create data frame
id <- c(1:4)
name <- c("Dag Batter","Richart Henniger","Tami Doers","Patrick Jaquet")	
department <- c("Marketin","Product Management","Services","Support")

employee <- data.frame(id, name, department)

print(employee)








