library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Body Mass Index Calculator"),

  # Sidebar with text input for mass and height
  sidebarLayout(
    sidebarPanel( 
      p("According to the World Health Organisation, your Body Mass Index or BMI provides a useful, simple classifcation
        of underweight, overweight and obese weight ranges."),
      br(),
      p("The BMI, which is calculated from your mass in kg divided by your height in m squared, is independent of age and the same for both genders."),
      br(),
      numericInput("mass", "How much do you weigh (kg)?", 70, step=1),
      numericInput("height", "How tall are you (m)?", 1.70, step=0.01),
      actionButton("goButton", "Go calculate!")
    ),

    # Report the calculated body mass index to one decimal place
    mainPanel(
      h3("Your Body Mass Index (BMI) is:"),
      verbatimTextOutput("calculation"),
      textOutput("text1"),
      br(),
      img(src = "bmipic.png", height = 420, width = 680)
    )
  )
))
