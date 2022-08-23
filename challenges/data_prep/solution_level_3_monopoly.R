library(readxl)
library(dplyr)
library(tidyr)

# Input the data
landings <- readxl::read_excel('input_level_3_monopoly.xlsx',sheet = 'landings')
costs <- readxl::read_excel('input_level_3_monopoly.xlsx',sheet = 'costs')
rent <- readxl::read_excel('input_level_3_monopoly.xlsx',sheet = 'rent')

# Join the rent and costs data sets
monopoly_df <- left_join(costs,rent,by = c('square','upgrade'))

# Double the rent where upgrade = 'None'
monopoly_df$rent <- ifelse(monopoly_df$upgrade=='None',monopoly_df$rent*2,monopoly_df$rent)

# Join to the landing data to find the set and perc chance to land on each square
landing_lookup <- landings[,c('square','set','perc')]
monopoly_df <- left_join(monopoly_df,landing_lookup,by = 'square')

# At a set (street) & upgrade level find:
# - the total chance to land on the street, 
# - the total cost of the street
# - the average rent for the street
street_df <- monopoly_df %>% 
  group_by(set,upgrade) %>% 
  summarise(land_perc = sum(perc),
            street_cost = sum(cost),
            avg_rent = mean(rent))

# rent is collected each time a player lands on the street,
# find the number of times the street needs to be landed on to breakeven
street_df$lands_to_breakeven <- street_df$street_cost/street_df$avg_rent

# calculate 1 divided by the chance to land on the street to find the number of player turns to land on the street 
street_df$turns_to_land_on_street <- 1/street_df$land_perc

# combine the number of lands to breakeven and the number of turns to land on the street 
# to find the number of turns for the street to breakeven
street_df$turns_to_breakeven <- street_df$lands_to_breakeven * street_df$turns_to_land_on_street

# sort the data set ascending by turns for the street to breakeven to find the best street combinations
street_df <- arrange(street_df,turns_to_breakeven)

# output the data
write.csv(street_df,'output_level_3_monopoly.csv',row.names = F)


