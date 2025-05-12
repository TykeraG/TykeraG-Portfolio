##### Instruction 1 #####
library(tidyverse)


##### Instruction 2 #####
library(usdata)


##### Instruction 3 #####
PoliceViolence <- fatal_police_shootings


##### Instruction 4 #####
view(PoliceViolence)


##### Instruction 5 #####
PoliceViolence <- PoliceViolence |>  
  mutate(race = case_when(
    race == "A" ~ "Asian" , 
    race == "W" ~ "White" , 
    race == "H" ~ "Hispanic" , 
    race == "B" ~ "Black" , 
    race == "O" ~ "Other" , 
    race == "N" ~ "Native American")) 

print(PoliceViolence)


##### Instruction 6 #####
SouthernStates <- c("AL", 
                    "LA" , 
                    "TX" , 
                    "FL" , 
                    "MS" , 
                    "TN" , 
                    "GA" , 
                    "AK" , 
                    "SC" , 
                    "NC" , 
                    "VA")


##### Instruction 7 #####
PoliceViolence <- PoliceViolence |> 
  mutate(South = ifelse(state %in% SouthernStates, "South" , "NonSouth"))


##### Instruction 8 #####
# Done!
