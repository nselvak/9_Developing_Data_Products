#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that calculates BMI

shinyUI(fluidPage(
    
    titlePanel("BMI Calculator"),
    
    sidebarLayout(
        sidebarPanel( 
            
            helpText("BMI Index is a common measure of health, this application calculates it"),            
            br(),           
            numericInput("ing_weight_kg",label = h4("How much do you weigh(kg)"),
                         min = 40, 
                         max = 250,0), 
            br(),
            numericInput("int_height_cm",label = h4("What is your height(cm)"),
                         min = 120, 
                         max = 250,0), 
            br(),
            
            br(),   
            actionButton("FindBMI", 
                         label = "Your BMI is")    
            
            
        ),
        mainPanel
        (
            tabsetPanel
            (
                tabPanel("Find out you BMI",
                         p(h4("Current measures:")),
                         textOutput("current_height"),
                         textOutput("current_weight"),
                         br(),
                         p(h4("BMI:")),
                         textOutput("BMI_result"),
                         p(h4("BMI classification:")),
                         textOutput("status_indicator")
                         
                ),
                tabPanel(
                    "Documentation",
                    p(h4("BMI App")),
                    br(),
                    helpText("This application calculates a person's BMI based on current weight and height"),
                    p(h3("Why is BMI important?")),
                    helpText("BMI indicates if you weight is normal, underweight or overweight and is a common measure used by doctor to have a understanding about a person's health")
                )
                
                
            )
        )
    )
))