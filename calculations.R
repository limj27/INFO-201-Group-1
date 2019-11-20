library("readxl")
library("ggplot2")

stats_df <- read_xlsx("data/nba_team_stats.xlsx")
attendance_df <- read_xlsx("data/NBA Team Annual Attendance.xlsx")

View(stats_df)
View(attendance_df)

# Merging Dataframes
attendance <- attendance_df %>%



# Plot
plot <- ggplot(data = stats_df) +
  geom_line(mapping = aes(x = , y =)) +
  labs(
    title = "NBA Team Stats vs. Fan Attendance",
    x = "Team Stats by Season",
    y = "Fan Attendance"
  )