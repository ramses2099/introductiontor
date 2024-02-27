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