library(shiny)

bmi <- function(mass, height) mass/height^2
#range_descriptor <- c("underweight","healthy weight","overweight","obese")

#if (bmi < 18.5) {range_descriptor = "underweight"}
#else if 18.5 <= bmi <= 24.9 then range_descriptor = "healthy weight"

shinyServer(
  function(input, output) {
    
  output$calculation <- renderPrint({
    input$goButton
    isolate(round(bmi(input$mass, input$height),1))
    })
  
  output$text1 <- renderText({
    input$goButton
    isolate(
    paste("This puts you in the ", if (bmi(input$mass, input$height) < 18.5) {"underweight"}
      else if (bmi(input$mass, input$height) < 24.9) {"healthy weight"}
      else if (bmi(input$mass, input$height) < 29.9) {"overweight"}
      else {"obese"}, " range")
    )
    })
  }
)
