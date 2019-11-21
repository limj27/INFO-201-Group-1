#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
source("calculations.R")
library(shiny)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$Jordan <- renderPlotly({
      return(
        ggplotly(ggplot(data = wins_and_attend) +
                   geom_point(mapping = aes(x = `Win Percentage`, y = `Home: Avg Attendance`, group = Team, 
                                            colour = `Start Year`)) +
                   labs(
                     title = "NBA Team Wins vs. Fan Attendance",
                     x = "Team Win Percentage by Season",
                     y = "Fan Attendance"
                   )
                 )
      )
    })
})

