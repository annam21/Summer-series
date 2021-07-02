# ggplot2 notes - before class
# Anna Moeller 
# 6/7/2021

install.packages("ggplot2")
library(ggplot2)

# Setup 
ggplot(data = <DATA>, aes(<MAPPINGS>)) + 
  <GEOM_SOMETHING>()
# point out geom_point(), geom_boxplot(), geom_line() etc. 
# Plus sign is unique, much like %>% in dplyr 

# Step by step
iris
ggplot(data = iris)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point()

# Change colors, etc. for all points at once
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point(color = "blue", alpha = 0.2, size = 4)

# Here's the real power
# Change colors by group
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point()

# Regression line
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point() + 
  geom_smooth(method = "lm")
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() + 
  geom_smooth(method = "lm")

# Ggplot notes
# You can do things in any order (except the first line)
# Change labels? I can never remember. Look it up. 


# Drawbacks
# Ugly defaults
# Easy to do small things, it gets harder to tweak bigger things, like 
#  changing the colors
# Hard to look things up with ?geom_smooth. Need to go to Google to find examples 
#    Stack overflow!!! 


# Change it to a boxplot
ggplot(iris, aes(x = Species, y = Sepal.Width)) + 
  geom_boxplot()

# histogram
ggplot(iris, aes(x = Sepal.Width)) + 
  geom_histogram() 

# Faceting
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point() + 
  facet_wrap(~Species)

# ggplot resources 
# cheat sheet

# Loblolly data: 