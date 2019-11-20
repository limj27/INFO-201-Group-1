library("readxl")
library("ggplot2")
library("dplyr")

stats_df <- read_xlsx("data/nba_team_stats.xlsx")
attendance_df <- read_xlsx("data/NBA Team Annual Attendance.xlsx")
wins_df <- read.xlsx("data/")

View(stats_df)
View(attendance_df)

# Merging Dataframes
attendance <- attendance_df %>%
  select(`Start Year`, Team, `Home: Avg Attendance`) %>%
View()

wins <- wins_df %>% 
  select(`Start Year`, Team, `Win Percentage`)

wins_percentages <- wins %>% 
  group_by(Team) %>% 
  
# Teams stats vs fan attendance 
stats <- stats_df %>%
  select(`Start Year`, Team,`FG%`, `3P%`, `FT%`, TOV, RPG, APG, PPG) %>%
  View()
df_new <- full_join(attendance_df, stats_df, by = c("Start Year"))
View(df_new)


  
  



# Plot
plot <- ggplot(data = stats_df) +
  geom_line(mapping = aes(x = , y =)) +
  labs(
    title = "NBA Team Stats vs. Fan Attendance",
    x = "Team Stats by Season",
    y = "Fan Attendance"
  )