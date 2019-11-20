library("readxl")
library("ggplot2")
library("dplyr")

stats_df <- read_xlsx("data/nba_team_stats.xlsx")
attendance_df <- read_xlsx("data/NBA Team Annual Attendance.xlsx")
wins_df <- read.xlsx("data/")

# Merging Dataframes
attendance <- attendance_df %>%
  select(`Starting Year`, Team, `Home: Avg Attendance`)

wins <- wins_df %>% 
  select(`Start Year`, Team, `Win Percentage`)

wins_percentages <- wins %>% 
  group_by(Team) %>% 
  
  



# Plot
plot <- ggplot(data = stats_df) +
  geom_line(mapping = aes(x = , y =)) +
  labs(
    title = "NBA Team Stats vs. Fan Attendance",
    x = "Team Stats by Season",
    y = "Fan Attendance"
  )