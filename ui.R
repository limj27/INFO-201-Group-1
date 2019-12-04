library(shiny)
library(plotly)
library(shinythemes)
#Code for all the seven pages
page_one <- tabPanel(
  "Home Page",
  titlePanel("Home Page"),
  h3("Welcome to our project!"),
  p("This is our analysis of NBA analytics!")
  
)
page_two <- tabPanel(
  "Background",
  titlePanel("Information about the Project"),
  p("We are focusing our project on the statistics of NBA and analyzing team data comapared with
     the team's fan attendance per year. All of our group members were very interested in sports
     so it worked out for the better to select the topic that we were all interested."),
  p("The main research questions that we are trying to answer with this project is to see how
     team performance affects the fan attendance of each team and analyze how they correlate to one
     another. This maybe be used to see what the team's need to improve to increase their fan
     attendance so that their fan experience and financials will rise.")
)
page_three <- tabPanel(
  "Fan Attendance vs Team's Winning %",
  titlePanel("Fan Attendance vs Team's Winning %"),
  sidebarLayout(
    mainPanel(
      plotlyOutput("Jordan")
    ),
    sidebarPanel(
      h3("Description"),
      p("This graph is a scatterplot that represents the correlation between the win percentage of
        of each NBA team from the 2010 to the 2015 season.")
    )
  )
)
page_four <- tabPanel(
  "Fan Attendance vs Team's Performance Stats",
  titlePanel("Fan Attendance vs Team's Performance Stats"),
  sidebarLayout(
    mainPanel(
      plotlyOutput("Hannan")
    ),
    sidebarPanel(
      selectInput("stats", label = h3("Pick a stat to compare to fan attendance"),
                  choices = list("Field Goals Made" = "FGM", "Field Goals Attempted" = "FGA",
                                 "Field Goal %" = "FG%", "3 Pointers Made" = "3PM",
                                 "3 Pointers Attempted" = "3PA", "Free Throws Made" = "FTM",
                                 "Free Throws Attempted" = "FTA", "Free Throw %" = "FT%",
                                 "Turnovers" = "TOV", "Personal Fouls" = "PF",
                                 "Offensive Rebounds" = "ORB", "Defensive Rebounds" = "DRB",
                                 "Rebounds Per Game" = "RPG", "Assists Per Game" = "APG",
                                 "Steals Per Game" = "SPG", "Blocks Per Game" = "BPG",
                                 "Points Per Games" = "PPG"),
                  selected = 1
                  ),
      h3("Description"),
      p("This scatterplot shows the correlation between NBA team's average 
        stats and their fan attendance between the 2010 and 2015 seasons")
    )
  )
)
page_five <- tabPanel(
  "Conclusion",
  titlePanel("Conclusion"), 
  p("When looking back on our project there were some strengths and weakness
    that were relevant during this process. A strength to our project was 
    communication. We did a great job of communicating with each other while 
    working on this project. We would constantly be checking in with each 
    other and holding one another accountable. Another strength was 
    consistency; we were all consistent during this project by making sure that
    we met at least once a week for two hours to make sure we made progress for
    our project. A weakness for us was finding our data. Since there is a large
    amount ofteams in the NBA finding data for all teams was challenging. As a
    result of that, we spent a lot of time trying to find good dataset which
    halted our progress to an extent.The main lesson that we learned from this
    project was understanding how to work in groups. It can be tricky trying to
    coordinate with other people because not everyone has the samw schedule.
    But as a group we did a great job making sure we could meet at times that
    worked for all of us and making sure that we met at these times for the
    duration of the project. Future work that could be pursued as a result 
    of this project is using the areas of focus and applying it to other sports
    as well.")
)
page_six <- tabPanel(
  "About the Tech",
  titlePanel("Technical Report"),
  p("The main technology that we used was the language R, with main packages like dplyr to
     wrangle data, ggplot2 to plot the data that we want to present, and mainly the shiny package
     to put it all together."),
  p("To the link to the Technical Report:", a("Click Here", href = "https://github.com/limj27/INFO-201-Group-1/wiki/Technical-Report"))
)
page_seven <- tabPanel(
  "About Us",
  titlePanel("About Us"),
  p("The group members of this project group are Justin Lim, Jordan Jones, Hannan Ajmal.
     We are all intended Informatics majors or already in the Informatics major and we all are
     a second year at the University of Washington. We have all met in middle school and are from
     Federal Way, WA. The way we met were through sports related things, so it was only right to
     do a project that is centered around basketball.")
)


ui <- fluidPage(
  theme = shinytheme("cosmo"),
  titlePanel("NBA Analytics"),
  navlistPanel(
    page_one,
    page_two,
    navbarMenu(
      "Data Viz",
      page_three,
      page_four
    ),
    page_five,
    page_six,
    page_seven
  )
)
