iris
iris2 <- head(iris, 10)


# install.packages('tidyverse')
library(tidyverse)

# Mutate
tst <- mutate(iris, sepal.length.m = Sepal.Length / 100)
head(tst)
tst <- mutate(iris, tst = 1:n())
head(tst)

# Select - for columns
select(iris, Sepal.Length, Sepal.Width)
select(iris, -Petal.Length)

# Filter - for rows 
filter(iris2, Petal.Width == 0.2)

# String together
# %>%
# %in%, %%, %/%

iris2 <- iris %>%
  mutate(sepal.length.m = Sepal.Length / 100) %>%
  filter(Petal.Width == 0.2) %>% 
  select(sepal.length.m, Sepal.Length) 




unique(iris$Species)
iris %>% 
  filter(Species %in% c("setosa", "viginica"))

iris[iris$Species == "setosa" | iris$Species == "virginica", ]

iris[133, "Sepal.Width"]


# Grouping and summarizing 
iris %>% 
  group_by(Species) %>% 
  summarize(mn.sepal.len = mean(Sepal.Length))




