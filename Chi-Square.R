library(tidyverse)

##### Instruction 1 #####

Data$sex <- factor(Data$sex,
                   levels = c("1", "2"),
                   labels = c("female","male"))
Data$donate <- factor(Data$donate,
                      levels = c("1", "2", "3"),
                      labels = c("donate less", "no change", "donate more"))
                      
Data$county <- factor(Data$county,
                      levels = c("1", "2", "3"),
                      labels = c("Alpha", "Bravo", "Charlie"))

##### Instruction 2 #####
table(Data$sex, Data$donate)

table(Data$county, Data$donate)


##### Instruction 3 #####
ggplot(Data, aes(donate, fill = sex)) +
  geom_bar(position = "dodge") +
  labs(title = "Comparison of Sex and Donation",
       x = "Donate",
       y = "Count",
       fill = "Sex") +
  scale_fill_brewer(palette = "Paired") +
  theme_classic()

ggplot(Data, aes(donate, fill = county)) +
  geom_bar(position = "dodge") +
  labs(title = "Comparison of County and Donation",
       x = "Donate",
       y = "Count",
       fill = "County") +
  scale_fill_brewer(palette = "Accent") +
  theme_classic()


##### Instruction 4 #####
chisq.test(table(Data$sex, Data$donate))

chisq.test(table(Data$county, Data$donate))

# Done!
