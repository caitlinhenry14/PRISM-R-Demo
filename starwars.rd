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
names(starwars)
starwars %>% select(name, height, ends_with("color")) %>% names()
# or we can remove %>% names, then we can just see the dataframe
starwars %>% select(name, height, ends_with("color"))

# filtering data
# let's filter hair color... we should start by seeing what we have
unique(starwars$hair_color)
starwars %>% select(name, height, ends_with("color")) %>% filter(hair_color %in% c("blond", "brown") & height < 180)

# dealing with missing data
mean(starwars$height)
mean(starwars$height, na.rm = TRUE)
starwars %>% select(name, gender, hair_color, height)
starwars %>% select(name, gender, hair_color, height) %>% na.omit()

# make a new df out of this
newstarwars = starwars %>% select(name, gender, hair_color, height) %>% na.omit()
view(newstarwars)
