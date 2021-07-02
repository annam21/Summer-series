install.packages("ggplot2")

library(ggplot2)
require(ggplot2)

# Syntax
ggplot(data = <DATA>, 
       aes(<MAPPINGS>)) +
  <GEOM_SOMETHINGS>()

# Building step-by-step
iris
head(iris)
ggplot(data = iris,
       aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point()

# Change all points at once 
ggplot(data = iris,
       aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point(color = "blue", alpha = 0.2, size = 4)

# Show points by another variable 
ggplot(data = iris, 
       aes(x = Sepal.Length, 
           y = Petal.Length,
           color = Species,
           size = Species)) +
  geom_point(alpha = 0.3) 

# Add regression line 
ggplot(iris, 
       aes(x = Sepal.Length, 
           y = Petal.Length,
           color = Species)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

# Change axis labels 
ggplot(iris, 
       aes(x = Sepal.Length, 
           y = Petal.Length,
           color = Species)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) + 
  xlab("Sepal Length (cm)") + 
  ylab("Petal Length (cm)") + 
  # scale_x_continuous(expand = c(0, 0))
  expand_limits(x = 0, y = 0)

# Change the color scheme
p <- ggplot(iris, 
       aes(x = Sepal.Length, 
           y = Petal.Length,
           color = Species)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) + 
  scale_color_manual(values=c("#999999", "#E69F00", "#56B4E9")) + 
  theme_classic() + 
  expand_limits(x = 0, y = 0)
p
ggsave("results/plot1.png", dpi = 600)
