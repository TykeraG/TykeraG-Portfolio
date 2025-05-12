library(tidyverse)

##### Instruction 1 #####
yearlywage <- census |> 
  summarize(avgwage = mean(wage),
            .by = year)


##### Instruction 2 #####
yearlywage <- census |> 
  summarize(avgwage = mean(wage),
            .by = year) |> 
  mutate(avgwage = avgwage/100)


##### Instruction 3 #####
ggplot(data = yearlywage, mapping = aes(x = year, y = avgwage)) +
  geom_line()


##### Instruction 4 #####
cleandata <- census |> 
  mutate(wage = round(wage/100, 2)) |> 
  filter(wage <= 50) |> 
  drop_na()


##### Instruction 5 #####
ggplot(cleandata, aes(educ)) +
  geom_bar()


##### Instruction 6 #####
ggplot(cleandata, aes(educ, wage)) +
  geom_boxplot()


##### Instruction 7 #####
ggplot(cleandata, aes(wage)) +
  geom_histogram()


##### Instruction 8 #####
ggplot(cleandata, aes(wage)) +
  geom_histogram() +
  facet_wrap(~educ)


##### Instruction 9 #####
ggplot(cleandata, aes(wage, fill = educ)) +
  geom_density()


##### Instruction 10 #####
# this was fun