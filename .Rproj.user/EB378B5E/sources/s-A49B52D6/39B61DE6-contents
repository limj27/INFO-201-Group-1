#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

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
    "Team Attendance vs Team's Winning %",
    titlePanel("Team Attendance vs Team's Winning %"),
    sidebarLayout(
        mainPanel(
            p("This is where the plot goes")
        ),
        sidebarPanel(
            p("This is where the controls go")
        )
    )
)
page_four <- tabPanel(
    "Team Attendance vs Team's Performance Stats",
    titlePanel("Team Attendance vs Team's Performance Stats"),
    sidebarLayout(
        mainPanel(
            p("This is where the plot goes")
        ),
        sidebarPanel(
            p("This is where the controls go")
        )
    )
)
page_five <- tabPanel(
    "Conclusion",
    titlePanel("Conclusion")
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
