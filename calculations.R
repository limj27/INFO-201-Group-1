library("readxl")
library("ggplot2")
library("dplyr")
library("plotly")

stats_df <- read_excel("data/nba_team_stats.xlsx")
attendance_df <- read_excel("data/NBA Team Annual Attendance.xlsx")
wins_df <- read_excel("data/team_win_percent.xlsx")

colnames(wins_df) <- c("Start Year", "Team", "Win Percentage", "Last 3 Games", "Last Game", "Home", 
                       "Away", "Previous Year Win Percentage")
View(wins_df)

View(attendance_df)

View(stats_df)

# -------------- Merging Dataframes -----------------

# -------- Jordan's Work ------------

colnames(attendance_df)[1] <- "Start Year"

# Getting columns of interest
attendance <- attendance_df %>%
  select(`Start Year`, Team, `Home: Avg Attendance`)

# Getting attendance for each team
attendance_per_team <- attendance %>% 
  group_by(`Start Year`, Team)
print(attendance_per_team)



# Merging Dataframes
attendance <- attendance_df %>%
  select(`Start Year`, Team, `Home: Avg Attendance`)

wins <- wins_df %>% 
  select(`Start Year`, Team, `Win Percentage`)
  
wins_and_attend <- left_join(wins, attendance, by = c("Start Year", "Team"))

# Plot
plot <- ggplot(data = wins_and_attend) +
  geom_point(mapping = aes(x = `Win Percentage`, y = `Home: Avg Attendance`, group = `Start Year`)) +
  labs(
    title = "NBA Team Wins vs. Fan Attendance",
    x = "Team Win Percentage by Season",
    y = "Fan Attendance"
  )
p_plot <- ggplotly(plot)

# -------- End of Jordan's Work -----------------



# -------- Hannan's Work ---------------
  
# Teams stats vs fan attendance 
stats <- stats_df %>%
  select(`Start Year`, Team,`FG%`, `3P%`, `FT%`, TOV, RPG, APG, PPG)
  
View(stats)
  
df_new <- left_join(stats, attendance, by = c("Start Year", "Team"))
View(df_new)

# ---------- End of Hannan's Work ----------


