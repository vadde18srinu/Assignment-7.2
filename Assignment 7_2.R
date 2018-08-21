1. Write a program to create barplots for all the categorical columns in mtcars.

library(tidyr)
library(ggplot2)
library(purrr)
# or `library(tidyverse)

df<-data.frame(mtcars,row.names = NULL, stringsAsFactors = default.stringsAsFactors())
df

# all categorical columns  
mtcars %>%
  keep(is.numeric) %>% 
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_bar()


# barplots for categorical one column "carb" barplot. 
barplot (table(mtcars$carb),
         main = "Car Distribution",
         xlab = "Numbers of carb",
         col = c("darkblue", "green", "red","yellow","lightblue","darkgreen"),
         names.arg = c("1carb","2carb","3carb","4carb", "6carb", "8carb"))


2. Create a scatterplot matrix by gear types in mtcars dataset.

#pairs(~mpg+am+cyl+wt+qsec+vs, data=mtcars, 
#pairs(~mpg+disp+hp+drat+gear+carb, data=mtcars, 
pairs(~mpg+., data=mtcars, 
      main="mtcars Scatterplot Matrix")



3. Write a program to create a plot density by class variable.

names(mtcars)

rownames(mtcars)

sapply(mtcars,class)

# Filled Density Plot
d <- density(mtcars$class)
plot(d, main="class variables")
polygon(d, col="lightblue", border="red")





