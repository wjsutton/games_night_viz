<img src='https://github.com/wjsutton/games_night_viz/blob/main/challenges/icons/banner_icon.png?raw=true' width='100%'>

# Level 4: The Need for Speed

Welcome back!

Back in [Level 3](https://github.com/wjsutton/games_night_viz/blob/main/challenges/3_powering_up.md), we got powered up, now we’re in a race against time to stop the bad guys and win the game. For our next theme we’re valuing “The Need for Speed” as we race around the game world in search of victory. 

Getting from A to B in the fastest way possible is very challenging so any data we have would be invaluable, and from this data we may want to find out:
- Is there an optimal route I should go?
- Where are the fastest vehicles?
- Who are the fastest competitors in speed runs?

## The Challenges

Below are three challenges for you to choose from:
- [**Visualising data about our FAST games**](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed.md#data-visualisation-challenge), with datasets ranging from the best horses of Red Dead Redemption 2, to the fastest solve times of Rubik cubes
- [**Getting up to speed**](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed.md#visual-design-challenge-map-layers) with Tableau’s Map layer functionality and how we use layers to add more detail and data to our visualisations
- [**Finding the fastest horse in the west**](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed.md#data-preparation-challenge-finding-the-fastest-horse-in-the-west) by extracting data from a website to a csv file,  we walk you through finding and extracting data on Red Dead Redemption 2’s horses.

Submissions 
- Deadline is midnight PST 31st May 2022, level 5 will be released shortly afterwards
- Post your submissions on Twitter with the hashtag [#GamesNightViz](https://twitter.com/search?q=%23GamesNightViz&src=typed_query&f=top), and tag the team [@WJSutton12](https://twitter.com/WJSutton12), [@Visual_Endgame](https://twitter.com/Visual_Endgame), [@ninjavizlouis](https://twitter.com/ninjavizlouis) so we don't miss your great work!
- Submit your work to the project tracker here: [https://docs.google.com/forms/d/e/1FAIpQLScqFaHnRcX2uBX7h5PkbigXim1kfQMsnC7ZloF8UvxzfRog4w/viewform?usp=sf_link](https://docs.google.com/forms/d/e/1FAIpQLScqFaHnRcX2uBX7h5PkbigXim1kfQMsnC7ZloF8UvxzfRog4w/viewform?usp=sf_link)

---

## Data visualisation challenge

## Task

Pick one of the data sets below, or a data set you've found, and visualise it. 

| Name | Difficulty | Source | Data |
|---|---|---|---|
| Money Raised by Games Done Quick Speedrunning Events | Casual | [gamesdonequick.com](https://gamesdonequick.com/tracker) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/games_done_quick.csv) |
| How Long to Complete Mario Games | Casual | [howlongtobeat.com](https://howlongtobeat.com) & [nintendo.com](https://mario.nintendo.com/history/) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/how_long_to_complete_mario_games.csv) |
| Cars from Need for Speed 2015 | Casual | [Need For Speed fandom](https://nfs.fandom.com/wiki/Need_for_Speed_(2015)/Cars) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/need_for_speed_2015_cars.csv) |
| The Horses of Red Dead Redemption 2 | Normal | [gtabase.com](https://www.gtabase.com/red-dead-redemption-2/horses/#sort=attr.ct10.frontend_value&sortdir=desc) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/rdr2_horses.csv) |
| Twitch Plays Pokemon Completion Times | Normal | [wikipedia.org](https://en.wikipedia.org/wiki/Twitch_Plays_Pok%C3%A9mon) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/twitch_plays_pokemon_game_completion.csv) |
| Speedruns of Goldeneye (N64) Individual Levels | Normal | [speedrun.com](https://www.speedrun.com/ge60fps) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/goldeneye_speedruns_levels.csv) |
| GTA 5 Vehicles | Heroic | [gtabase.com](https://www.gtabase.com/grand-theft-auto-v/vehicles/#sort=attr.ct3.frontend_value&sortdir=desc) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/gta_5_vehicles.csv) |
| Mario Kart 8 Leaderboard Times | Heroic | [mkleaderboards.com](www.mkleaderboards.com) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/mario_kart_8_course_leaderboard_times.csv) |
| Evolution of Rubik's Cube solve times | Heroic | [kaggle.com](https://www.kaggle.com/datasets/patrasaurabh/evolution-of-rubiks-cube-solve-times) | [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/evolution_of_rubik_cube_solve_times.xlsx) |

Or choose one of the data sets from the [#GamesNightViz Data Archive :floppy_disk:](data_archive.md)

### Legendary difficulty - bring your own data

For those considering the Legendary difficulty (bring your own data), here are a few ideas to get you started:
- Are there games that you’ve played, or those played competitively and specifically for speed runs (i.e., the Uncharted series has a speed run option) 
- What games give you added benefits for completing things fast and/or perfectly (i.e., Crash Bandicoot level relics based on time completion and if you were able to collect all the fruit)
- What games use time as a disadvantage? (i.e., Tekken and Mortal Kombat have time limits on how long a match can last, Sonic the Hedgehog only gives you X amount of time to complete a level (as do many Sega games, i.e., Streets of Rage))

Looking for data sets? [Check out Sarah Bartlett's Twitter thread for data sources](https://twitter.com/sarahlovesdata/status/1445006106116374539?ref_src=twsrc%5Etfw) or check out the [#GamesNightViz Data Archive :floppy_disk:](data_archive.md)

| Data set Difficulty | Description |
|---|---|
| Casual | For those new to data visualisation or with limited time available |
| Normal | A fair size data set that could create multiple data visualisations |
| Heroic | A large data set for those with more time available  |
| Legendary | Expand on the data provided by bringing new data to the project |

### Inspiration from the Tableau community

Here are some vizzes to check out for inspiration. 

Your content may be different but focus on the choices the authors have made in presenting the data, what would you do differently? And what aspects would you like to emulate?

<a href='https://public.tableau.com/app/profile/ghafar.shah2168/viz/EvolutionofRubiksCubeSolveTimes/RubiksCubeSolveTimes'>
  <img src = "https://public.tableau.com/thumb/views/EvolutionofRubiksCubeSolveTimes/RubiksCubeSolveTimes" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/liam4067/viz/WCAsizecomparison/FinalDashboard'>
  <img src = "https://public.tableau.com/thumb/views/WCAsizecomparison/FinalDashboard" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/mina.ozgen/viz/DarkSoulsSpeedrunning/DarkSoulsspeedrunning'>
  <img src = "https://public.tableau.com/thumb/views/DarkSoulsSpeedrunning/DarkSoulsspeedrunning" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/collin.s6181/viz/KingoftheCubesfinal2/KingofCubesDark'>
  <img src = "https://public.tableau.com/thumb/views/KingoftheCubesfinal2/KingofCubesDark" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/ethan6341/viz/Ijustwannawatchsomespeedruns/IJustWannaWatchVideoGames'>
  <img src = "https://public.tableau.com/thumb/views/Ijustwannawatchsomespeedruns/IJustWannaWatchVideoGames" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/naresh.suglani/viz/Hypercars-MakingtheImpossiblePossible/Hypercars'>
  <img src = "https://public.tableau.com/thumb/views/Hypercars-MakingtheImpossiblePossible/Hypercars" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/eugene.yampolsky/viz/BMWMPerformance/BMWMPerformance'>
  <img src = "https://public.tableau.com/thumb/views/BMWMPerformance/BMWMPerformance" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/elmorrelli/viz/MelbournecupRadarChart/MelbournecupMAIN'>
  <img src = "https://public.tableau.com/thumb/views/MelbournecupRadarChart/MelbournecupMAIN" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/kevinruprecht/viz/GamesDoneQuick/TitleScreen'>
  <img src = "https://public.tableau.com/thumb/views/GamesDoneQuick/TitleScreen" width="30%">
</a>
<br><br>

Vizzes and Authors:
- The Evolution of Rubiks Cube Solve Times, by Ghafar Shah
- Does size matter? How the size of a rubiks cube affect players performance, by Liam Holland
- Dark Souls Speedrunning, by Mina Ozgen
- King of the Cubes, by Collin Smith
- I just wanna watch some speedruns, by Ethan Tai
- Hypercars - Making the Impossible Possible, by Naresh Suglani
- BMW M Performance, by Gene Yampolsky
- Melbourne cup: Horse stats by race, by Leigh Morrell
- Games Done Quick, by Kevin Ruprecht

---

## Visual design challenge: Map Layers

Create a visualization focused on time using map layers. It does not have to be an actual map if you don’t want to, the goal is to work on your map layer techniques to create the visualization. 

The idea with this theme is to emulate speed/time. Depending on the dataset, this could be actual timed events (i.e., a scoreboard), or showcasing items/characters that have different speed-driven metrics. It is up to you how to create the visualization, but keeping the theme of speed/time in mind as designing. 

Here are a few blog tutorials from the community
- [Game Shape Match by CJ Mayes](https://cj-mayes.com/2021/06/26/game-shape-match/)
- [Create a Sunburst Chart by Sebastian Deptalla](https://interworks.com/blog/2021/03/24/create-a-sunburst-chart-with-map-layers-in-tableau/)
- [Creating Layered Area Charts in Tableau by Toan Hoang](https://tableau.toanhoang.com/creating-layered-area-charts-in-tableau/)
- [Workout Wednesday 2022 Week 13 - Can you use multiple Mark Layers?](https://www.workout-wednesday.com/2022/03/29/2022tabw13/)
- [Webinar - Using Layers in Tableau 2020.4 with Adam McCann, from The Information Lab](https://www.youtube.com/watch?v=AQGYbUevGmk)

To work with map layers, without using a map, you are likely going to need to use a tool that will allow you to add new shapes or images as shapes that you’ve created, or collected. This includes, but is not limited to tools such as Figma, PowerPoint, Adobe, etc. 

If you are looking for icons, [thenounproject.com](thenounproject.com) is a great resource.

If you are looking to chart custom paths on a map, there are a few resources that you can use for this: [CBI Studio (interworks.com)](https://cbistudio.interworks.com/) or [PathToPoints (shinao.github.io)](https://shinao.github.io/PathToPoints/)

Try to focus on a color blind friendly color palette for an additive accessibility challenge. You can use this tool to test your visualizations color-accessibility: [Coblis — Color Blindness Simulator – Colblindor (color-blindness.com)](https://www.color-blindness.com/coblis-color-blindness-simulator/)

<a href='https://public.tableau.com/app/profile/joti.gautam/viz/PokeMonPokeDex1-20ofGenOne/Dashboard2'>
  <img src = "https://public.tableau.com/thumb/views/PokeMonPokeDex1-20ofGenOne/Dashboard2" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/p.padham/viz/IronQuestMoviesofthe90s/Moviesofthe90s'>
  <img src = "https://public.tableau.com/thumb/views/IronQuestMoviesofthe90s/Moviesofthe90s" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/marc.reid/viz/TravelPlannerEmissionsCalculator/TravelPlannerEmissionsCalculator'>
  <img src = "https://public.tableau.com/thumb/views/TravelPlannerEmissionsCalculator/TravelPlannerEmissionsCalculator" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/cj.mayes/viz/FifaPlayers-OneMapLayer/FlowerInspiration'>
  <img src = "https://public.tableau.com/thumb/views/FifaPlayers-OneMapLayer/FlowerInspiration" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/adam.e.mccann/viz/SouthMountain/SouthMountain'>
  <img src = "https://public.tableau.com/thumb/views/SouthMountain/SouthMountain" width="30%">
</a>
<a href='https://public.tableau.com/app/profile/stanke/viz/TablewithMapLayers/Dashboard1'>
  <img src = "https://public.tableau.com/thumb/views/TablewithMapLayers/Dashboard1" width="30%">
</a>


Vizzes and Authors:
- PokeMon: PokeDex (1-20) of Gen One by Joti Gautam
- #IronQuest | Movies of the 90s by Priya Padham
- Travel Planner + Emissions Calculator by Marc Reid
- Fifa Players - One Map Layer by CJ Mayes
- South Mountain by Adam E McCann
- Table with Map Layers by Luke Stanke

---

## Data preparation challenge: Finding the fastest horse in the west

For this challenge, we’re trying something new - obtaining data from gtabase.com for our horses of red dead redemption 2 data set. 

A few notes:
- This technique will not work for all websites - which depends largely on how they store and surface data on a webpage.
- We are doing this strictly in the interest of building an engaging non-commercial data visualisation sourcing gtabase.com not to recreate the owner’s website.
- We will need a Google Chrome browser (other browsers may have similar functionality) for the data clean up you can use a data prep tool, coding language or Excel

### Task
Using Google Chrome (or a browser of choice), find the JSON data from [gtabase.com/red-dead-redemption-2/horses/](https://www.gtabase.com/red-dead-redemption-2/horses/#sort=attr.ct10.frontend_value&sortdir=desc). Flatten the JSON data, save the data as a csv and clean up the columns. 

1. Navigate to [gtabase.com/red-dead-redemption-2/horses/](https://www.gtabase.com/red-dead-redemption-2/horses/#sort=attr.ct10.frontend_value&sortdir=desc)
2. Right click on the page and select “inspect” to open the Google Developer tools panel (or Ctrl + Shift + I)
3. At the top of the Developer tools panel select the tab “Network” and refresh the page - you should now see each section of the webpage being loaded in order
4. On Developer tools filter for “Fetch/XML” and in the search box type “json”
5. The first result “7.json?.......” will be our dataset which we can verify using the tab on right “Preview”, return to “Headers” and copy the Request URL.
6. In a new browser tab search for “JSON to CSV” I have used [convertcsv.com/json-to-csv](https://www.convertcsv.com/json-to-csv.htm) and copy the URL into Step 1, Enter URL and hit “Load URL” and then to Step 3. “Convert JSON to CSV” and then “Download Result”. Coders amongst you may want to have a go at flattening the JSON, for those using data prep tools check whether your tool can intake JSON data.  
7. The data here is rather messy, for example, the 13th column starting “Turkoman Horse” has its correct column heading in the 16th column starting “Horse Breed”. Reduce the data set only keeping columns with the following data:
Id, name, image, Horse Breed, Horse Class, Handling, Health, Stamina, Speed, Acceleration, Handling, Release Date, Title Update, Game Edition, Overall Rating, Base Value ($)

8. Cleanup the release data column so it is of a date format, e.g. YYYY-MM-DD. For this example, we are converting the date string “December 22, 2020”, as the epoch “1608591600” differs by 1 day.
9. Output the data [link](https://github.com/wjsutton/games_night_viz/blob/main/challenges/4_the_need_for_speed/rdr2_horses.csv)

If you’d like to learn more about APIs see Will’s post on FlerlageTwins.com, [Tableau Public APIs Plus a VOTD Data Set](https://www.flerlagetwins.com/2021/04/tableau-public-api.html)

--- 

## How to Submit

- Deadline is midnight PST 31st May 2022, level 5 will be released shortly afterwards
- Post your submissions on Twitter with the hashtag [#GamesNightViz](https://twitter.com/search?q=%23GamesNightViz&src=typed_query&f=top), and tag the team [@WJSutton12](https://twitter.com/WJSutton12), [@Visual_Endgame](https://twitter.com/Visual_Endgame), [@ninjavizlouis](https://twitter.com/ninjavizlouis) so we don't miss your great work!
- Submit your work to the project tracker here: [https://docs.google.com/forms/d/e/1FAIpQLScqFaHnRcX2uBX7h5PkbigXim1kfQMsnC7ZloF8UvxzfRog4w/viewform?usp=sf_link](https://docs.google.com/forms/d/e/1FAIpQLScqFaHnRcX2uBX7h5PkbigXim1kfQMsnC7ZloF8UvxzfRog4w/viewform?usp=sf_link)

