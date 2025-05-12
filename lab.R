##### Question 1 #####

library("tidyverse")
library("usdata")
head(state)


##### Question 4 #####
state_stats |> 
  filter(poverty <= 10)



##### Question 5 #####
state_stats |> 
  mutate(pop_change = (pop2010 - pop2000) / pop2000 * 100) |> 
  select(state, pop2010, pop2000, pop_change)



##### Question 6 #####
Fstates <- c("Georgia" , "Florida" , "New York" , "Wisconsin" , "Illinois")
state_stats |> 
filter(state %in% Fstates)



##### Question 7 #####
Fstates <- state_stats |> 
  filter(state %in% Fstates)




##### Question 8 #####
Fstates |> 
  summarize(mean(med_income))



##### Question 9 #####
Fstates |> 
  summarize(sd(poverty))


# Thank you!
