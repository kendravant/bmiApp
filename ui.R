library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Body Mass Index Calculator"),

  # Sidebar with text input for mass and height
  sidebarLayout(
    sidebarPanel( 
      div("According to the World Health Organisation, your Body Mass Index or BMI provides a useful, simple classifcation
        of underweight, overweight and obese weight ranges.",style = "color:green"),
      br(),
      p("The BMI is calculated from your mass in kilograms divided by your height in metres squared."),
      br(), 
      p("It is independent of age and the same for both genders.", 
        span("Calculate yours today!", style = "color:green")),
      br(),
      br(),
      br(),
      numericInput("mass", "How much do you weigh (in kg)?", 70, step=1),
      numericInput("height", "How tall are you (in m)?", 1.70, step=0.01),
      actionButton("goButton", "Go calculate!")
    ),

    # Report the calculated body mass index to one decimal place
    mainPanel(
      h4("Your Body Mass Index (BMI) is:"),
      verbatimTextOutput("calculation"),
      textOutput("text1"),
      br(),
      img(src = "BMIpic.png", height = 420, width = 680)
    )
  )
))
