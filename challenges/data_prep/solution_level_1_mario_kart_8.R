library(readxl)
library(tidyr)
library(dplyr)

# Read the data
kart_bodies <- readxl::read_excel('input_level_1_mario_kart_8.xlsx',sheet = 'Kart Bodies')
drivers <- readxl::read_excel('input_level_1_mario_kart_8.xlsx',sheet = 'Drivers')
tires <- readxl::read_excel('input_level_1_mario_kart_8.xlsx',sheet = 'Tires')
gliders <- readxl::read_excel('input_level_1_mario_kart_8.xlsx',sheet = 'Gliders')
available_at_start <- readxl::read_excel('input_level_1_mario_kart_8.xlsx',sheet = 'Unlocked')
kart_images <- readxl::read_excel('input_level_1_mario_kart_8.xlsx',sheet = 'Image URLs')

# add unlock flag
available_at_start$unlocked <- 1

# Pivot tabs to longer, rename values column to reference the tab it came from,
# e.g. values from kart bodies should be named "kart body values" or similar
body_pivot <- kart_bodies %>%  pivot_longer(!Body, names_to = "Attributes", values_to = "kart_body_value")
driver_pivot <- drivers %>%  pivot_longer(!Driver, names_to = "Attributes", values_to = "driver_value")
tire_pivot <- tires %>%  pivot_longer(!Tire, names_to = "Attributes", values_to = "tire_value")
glider_pivot <- gliders %>%  pivot_longer(!Glider, names_to = "Attributes", values_to = "glider_value")

# join pivots together, so you have each combination of:
# Kart body, driver, tire, glider matching on Attribute
kart_df <- inner_join(body_pivot,driver_pivot,by='Attributes')
kart_df <- inner_join(kart_df,tire_pivot,by='Attributes')
kart_df <- inner_join(kart_df,glider_pivot,by='Attributes')

# create a total value for each attribute, summing body, driver, tire and glider
kart_df$total_value <- kart_df$kart_body_value + kart_df$driver_value + kart_df$tire_value + kart_df$glider_value

# Find out which bodies, drivers, tires, gliders are unlocked at the start
# create a count for the total unlocked
kart_df <- left_join(kart_df,available_at_start,by=c('Body' = 'unlocked_at_start'))
kart_df <- left_join(kart_df,available_at_start,by=c('Driver' = 'unlocked_at_start'))
kart_df <- left_join(kart_df,available_at_start,by=c('Tire' = 'unlocked_at_start'))
kart_df <- left_join(kart_df,available_at_start,by=c('Glider' = 'unlocked_at_start'))

# convert NAs to zero, and count number of components that are unlocked at the start 
kart_df[is.na(kart_df)] <- 0
kart_df$components_unlocked <- kart_df$unlocked.x + kart_df$unlocked.x.x + kart_df$unlocked.y + kart_df$unlocked.y.y

# remove individual values
drops <- c("kart_body_value","driver_value","tire_value","glider_value","unlocked.x","unlocked.x.x","unlocked.y","unlocked.y.y")
kart_df <- kart_df[ , !(names(kart_df) %in% drops)]

# pivot dataset for calculations
kart_pivot <- kart_df %>% pivot_wider(names_from = Attributes, values_from = total_value)

# simplify stats
kart_pivot <- kart_pivot %>% mutate(overall_total = select(., WG:TG) %>% rowSums(na.rm = TRUE))
kart_pivot <- kart_pivot %>% mutate(speed_total = select(., SL:SG) %>% rowSums(na.rm = TRUE))
kart_pivot <- kart_pivot %>% mutate(handling_total = select(., TL:SG) %>% rowSums(na.rm = TRUE))

kart_pivot$requires_unlocks <- ifelse(kart_pivot$components_unlocked == 4,FALSE,TRUE)

kart_pivot <- kart_pivot %>% 
  arrange(-overall_total,-speed_total,-handling_total) %>%
  group_by(Driver,requires_unlocks) %>% 
  mutate(rank = rank(-overall_total, ties.method = "first"))

# Filter for best kart per driver
drivers_best_kart <- filter(kart_pivot,rank == 1)

drivers_best_kart <- left_join(drivers_best_kart,kart_images,by=c('Body' = 'Component'))
drivers_best_kart <- left_join(drivers_best_kart,kart_images,by=c('Driver' = 'Component'))
drivers_best_kart <- left_join(drivers_best_kart,kart_images,by=c('Tire' = 'Component'))
drivers_best_kart <- left_join(drivers_best_kart,kart_images,by=c('Glider' = 'Component'))

names(drivers_best_kart)[24:27] <- c('kart_body_image','driver_image','tire_image','glider_image')
drivers_best_kart <- drivers_best_kart[ , !(names(drivers_best_kart) %in% c("rank"))]

write.csv(drivers_best_kart,"output_level_1_mario_kart_8.csv",row.names = F)

