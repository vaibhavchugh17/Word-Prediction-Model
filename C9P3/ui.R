library(shiny)

shinyUI(navbarPage("Custom Scatter Plot",
                            
                            sidebarLayout(
                              sidebarPanel(
                                numericInput("numeric1", "How many numbers to plot on X Axis?",
                                             value = 10, min = 0, max = 100, step = 1),
                                numericInput("numeric2", "How many numbers to plot on Y Axis?",
                                             value = 10, min = 0, max = 100, step = 1),
                                sliderInput("x", "Pick a minimum and maximum number for the X Axis",
                                            -1000, 1000, value = c(-250, 250)),
                                sliderInput("y", "Pick a minimum and maximum number for the Y Axis",
                                            -1000, 1000, value = c(-250, 250)),
                                submitButton("Submit")
                              ),
                              
                              mainPanel(
                                h4("Custom Plot"),
                                plotOutput("plot1")
                              )
                            )
                   )
) 

