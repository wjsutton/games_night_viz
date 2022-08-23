# Data preparation challenge: C.Liam Brown Sunk my Battleship
# C.Liam Brown has built an AI to play battleship, and it's very effective, but can we learn from previous matches where the safest squares are to give us a better chance of winning?
# Special thanks to C.Liam Brown for supplying the data, if you haven't yet try a game against the AI: https://cliambrown.com/battleship/play.php 

library(dplyr)
# Find the top 10 safest squares
# read in the squares data set
squares <- read.csv('input_level_2_battleship_squares.csv',stringsAsFactors = F)

# filter ai_mode_id = 3
df <- filter(squares,ai_mode_id == 3)

# create grid row and column for each square
# e.g. row 1 will include squares 1-10, row 2 includes squares 11-20, etc.
# and column 1 will contain 1, 11, 21, etc.
df$row <- floor((df$square - 1) / 10)+1
df$column <- (df$square -1) %% 10 + 1

# filter for squares that the player occupies, ai_ships == 0 
df <- filter(df,ai_ships == 0)

# reduce data set to ai_win, square, games, row, & column
df <- df[,c('ai_win', 'square', 'games', 'row', 'column')]

# create column, games won by ai, ai_win * games
df$ai_games_won <- df$ai_win * df$games

# create an aggregated view summing the ai_games_won and games field by square, row, and column
agg_df <- df %>% 
  group_by(square, row, column) %>% 
  summarise(ai_games_won = sum(ai_games_won),
            games = sum(games))

# calculate the player win rate, i.e. games not won by the ai / games
agg_df$player_win_rate <- (agg_df$games - agg_df$ai_games_won)/agg_df$games

# sort by the highest player win rate and select the top 10
agg_df <- arrange(agg_df,-player_win_rate)
top10_df <- agg_df[1:10,]

# write the results to csv
write.csv(top10_df,'output_level_2_battleship_squares.csv',row.names = F)
