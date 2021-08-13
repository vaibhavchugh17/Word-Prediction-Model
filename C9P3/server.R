library(shiny)
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({ par(bg = "white", fg = "white", col = "black")
    set.seed(1000)
    numx <- input$numeric1
    numy <- input$numeric2
    minx <- input$x[1]
    maxx <- input$x[2]
    miny <- input$y[1]
    maxy <- input$y[2]
    datax <- runif(numx, minx, maxx)
    datay <- runif(numy, miny, maxy)
    plot(datax, datay, xlab = "X Axis", ylab = "Y Axis", main = "Custom Plot",
         xlim = c(-1000, 1000), ylim = c(-1000, 1000))
  })
  
})