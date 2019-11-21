source("calculations.R")
library(shiny)
library(plotly)
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
    output$Hannan <- renderPlotly({
      return(
        ggplotly(ggplot(data =  stats_attend) +
                   geom_point(mapping = aes(x = unlist(stats_attend[input$stats]), y = `Home: Avg Attendance`, 
                                            group = `Start Year`, colour = `Start Year`)) +
                   labs(
                     title = "NBA Team Statistics translating to Fan Attendance",
                     x = "Team Stats by Season",
                     y = "Fan Attendance"
                   )
        )
      )
    })
})

