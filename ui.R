#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    titlePanel("Distance Travelled"),
    
    sidebarLayout(
        sidebarPanel( 
            
            helpText("Calculate the distance covered within a given time considering the speed"),            
            br(),           
            numericInput("speed_km",label = h4("Speed (Kilometers)"),min = 10, max = 200,0),
            br(),
            numericInput("time_taken",label = h4("Time taken (Hours)"),min = 0.20, max = 250,0),
            br(),
            
            br(),   
            actionButton("dist_trav", label = "Distance Covered")    
            
            
        ),
        mainPanel
        (
            tabsetPanel
            (
                tabPanel("Distance covered",
                         p(h4("Time travelled:")),
                         textOutput("time_tak"),
                         p(h4("Your speed:")),
                         textOutput("dist_cov"),
                         
                         p(h4("Distance covered:")),
                         textOutput("total_trav")
                         
                         
                ),
                tabPanel(
                    "Documentation",
                    p(h4("Distance Covered Calculation")),
                    br(),
                    helpText("This simple application calculates distance covered based on the speed and time taken")
                )
                
                
            )
        )
    )
))