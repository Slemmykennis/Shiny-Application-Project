#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    values <- reactiveValues()
    
    observe({
        input$dist_trav
        values$dist <- isolate({
            
            input$speed_km*input$time_taken
            
            
            
        })
    })
    
    
    
    # Display your current values
    output$dist_cov <- renderText({
        input$speed_km
        paste("Your Speed is :", isolate(input$speed_km))
    })
    
    output$time_tak <- renderText({
        input$time_taken
        paste("Time taken is : ", isolate(input$time_taken))
    })
    
    
    
    # Display your dist
    
    output$total_trav <- renderText({
            paste("Your total distance covered:", values$dist)
    })
    
    
    
    
    
    
})