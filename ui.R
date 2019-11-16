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
    sidebarLayout(
        sidebarPanel(
            h3("Welcome to our project!"),
            p("This is our analysis of NBA analytics!")
        ),
        mainPanel(
            h2("NBA Analytics")
        )
    )
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
    "Viz #1",
    titlePanel("Viz #1")
)
page_four <- tabPanel(
    "Viz #2",
    titlePanel("Viz #2")
)
page_five <- tabPanel(
    "Conclusion",
    titlePanel("Conclusion")
)
page_six <- tabPanel(
    "About the Tech",
    titlePanel("Technical Report")
)
page_seven <- tabPanel(
    "About Us",
    titlePanel("About Us"),
    
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
