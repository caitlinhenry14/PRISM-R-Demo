library(tidyverse)

# take a look at our dataset as a whole
view(starwars)

# look at variable types
glimpse(starwars)

# see some details of character gender
class(starwars$gender)
unique(starwars$gender)
starwars$gender <- as.factor(starwars$gender)
class(starwars$gender)

# turn into a factor
class(starwars$gender)
levels(starwars$gender)

# switch them around
starwars$gender <- factor((starwars$gender), levels = c("masculine", "feminine"))
levels(starwars$gender)

# select variables
