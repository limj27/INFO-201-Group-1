library("readxl")
library("ggplot2")

stats_df <- read.csv("data/2012-18_teamBoxScore.csv", stringsAsFactors = FALSE)
attendance_df <- read_excel("data/NBA Team Annual Attendance.xlsx")

View(stats_df)
View(attendance_df)

# Merging Dataframes
attendance <- attendance_df %>% 
  select(`Starting Year`, Team, `Home: Avg Attendance`)

stats <- stats_df %>% 
  select(gmDate, teamAbbr, teamRslt)



# Plot
plot <- ggplot(data = stats_df) +
  geom_line(mapping = aes(x = , y =)) +
  labs(
    title = "Number of Wins per Season vs. Fan Attendance",
    x = "Team Wins by Season",
    y = "Fan Attendance"
  )