# Level 1: Player Select

Welcome! The theme for the first #GamesNightViz project is "Player Select", which follows the start of most games - choosing your character. 

---

## Data visualisation challenge

Pick one of the data sets below and visualise it. 

| Name | Difficulty | Source | Data |
|---|---|---|---|
| Mario Golf Super Rush Character Stats | Casual | [NintendoLife](https://www.nintendolife.com/guides/mario-golf-super-rush-full-character-roster-and-special-shot-list) | [link](https://github.com/wjsutton/games_night_viz/blob/main/1_player_select/mario_golf_super_rush_character_stats.csv) |
| HowChoo's Top 50 Most Iconic Video Game Characters | Casual | [HowChoo.com](https://howchoo.com/gaming/iconic-video-game-characters) | [link](https://github.com/wjsutton/games_night_viz/blob/main/1_player_select/howchoos_top_50_most_iconic_video_game_character.csv)  |
| Pokemon of the Year, 2020 | Normal | [Pokemon2020.com](https://pokemon2020.pokemon.com/en-us/) | [link](https://github.com/wjsutton/games_night_viz/blob/main/1_player_select/pokemon_of_the_year_2020.csv) |
| Street Fighter Character Usage and Stats | Normal | [Capcom.com](https://game.capcom.com/cfn/sfv/stats/usagerate) & [streetfighter.fandom.com](https://streetfighter.fandom.com/wiki/Street_Fighter_V_Character_Gameplay_Stats) | [link](https://github.com/wjsutton/games_night_viz/blob/main/1_player_select/street_fighter_v_character_usage_and_stats.xlsx) |
| Mario Kart 8, The best kart for each driver  | Heroic  | [MarioWiki.com](https://www.mariowiki.com/Mario_Kart_8_Deluxe_in-game_statistics) | [link](https://github.com/wjsutton/games_night_viz/blob/main/1_player_select/mario_kart_8_best_kart_per_driver.csv) |
| The Top 100 Female Poker Players  | Heroic  | [TheHendonMob.com](https://pokerdb.thehendonmob.com/player.php?a=r&n=68149) | [link](https://github.com/wjsutton/games_night_viz/blob/main/1_player_select/top_female_poker_players_and_events.xlsx) |

**Legendary pep talk**

**Inspiration from the community**

---

## Visual design challenge: Colour

Colour is one of the most powerful tools for the data visualisator to connect with their readers/users. Colour allows us to distinguish and emphasize important parts of out data visualisation and well as creating atmosphere to the work.

Here's an example by Andy Cotgrave, a clever switch of colour to create [Same charts different message](https://gravyanecdote.com/data-2/changing-the-message-without-changing-the-data/)

<p align="center">
<a href='https://gravyanecdote.com/data-2/changing-the-message-without-changing-the-data/'>
  <img src = "https://gravyanecdote.com/wp-content/uploads/2017/01/Same-charts-different-message.png" width="70%" class="center" alt="An image of the same chart twice, one in red showing the death toll in Iraq, the other blue rotated showing deaths in decline.">
</a>
</p>

### Task 
Using a colour palette tool create a unique colour scheme for a data visualisation. 

Some of my favourites colour tools
- [Adobe Colour](https://color.adobe.com/create/color-wheel)
- [Datadam Colors](https://public.tableau.com/app/profile/ken.flerlage/viz/DatafamColors/StartPage)
- [Pokemon Colour Palettes](https://public.tableau.com/app/profile/wjsutton/viz/PokemonColourPalettes/PokePalettes)

For more on inspiration on colour tool, read this great article by Lisa Charlotte Muth, [Your Friendly Guide to Colors in Data Visualisation](https://blog.datawrapper.de/colorguide/)

Consider accessibility when experimenting with colour, you can create more accessible visualisations by:
- using websafe contrasting colours: [WhoCanUse.com](https://whocanuse.com/)
- checking how a colour blind person would see you viz: [Color Blindness Simulator](https://www.color-blindness.com/coblis-color-blindness-simulator/).

---

## Data prepartion challenge: The best Mario Kart 

The holiday season is coming up, which means friends and relatives will be coming over and a chance you'll find yourself in a Mario Kart 8 tournament. To give myself the best possiblity of winning what's the best kart I could pick for my favourite character? Also what's the best kart whether everything has been unlocked or not? 

For Mario Kart 8, at the start of the game you select:
- A driver
- Kart body
- Kart tires
- Kart glider

### Task

To work out the best combination of driver, body, tires and glider, we can source some data tables from [MarioWiki.com](https://www.mariowiki.com/Mario_Kart_8_Deluxe_in-game_statistics)

1. Input the data
2. Long pivot the Driver, Kart body, Tires and Gliders tabs so the each attribute becomes a row with the attribute value.
3. Join Driver, Kart body, Tires and Gliders together so we have 1 row per combination of driver, kart body, tires and glider
4. Create a total value (sum of driver, kart body, tires and glider) for each attribute
5. Drop the individual component values and create a wide pivot of the data spreading attributes into columns displaying the total values for each kart combination
6. Simplfy the attributes:
- Sum all attributes as the overall total
- Sum all attributes starting with "S" for the overall speed
- Sum all attributes starting with "T" for the overall handling

7. Determine which components (driver, kart body, tires and glider) are available at the start of the game
8. Create flag for any kart combination that requires an unlock, i.e. any components not available at the start of the game
9. Create a rank for each driver and if an unlock is required, ordered by the highest overall total descending, then by speed descending and handling descending
10. Filter the data so just the best kart for each driver and if an unlock is required
11. Optional: Join each component to an image so you know what to look out for in the game
12. Output the data
