install.packages("ggplot2").
library(ggplot2)
ggplot(data=mtcars) + 
  aes(x=mpg, y=disp) + 
  geom_point()
