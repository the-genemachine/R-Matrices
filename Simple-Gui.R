library(shiny)

# Define UI for application
ui <- fluidPage(
   titlePanel("Simple Shiny App"),
   sidebarLayout(
      sidebarPanel(
         numericInput("numInput", "Enter a number:", value = 1),
         actionButton("goButton", "Square It!")
      ),
      mainPanel(
         textOutput("resultOutput")
      )
   )
)

# Define server logic
server <- function(input, output) {
   observeEvent(input$goButton, {
      output$resultOutput <- renderText({
         result <- input$numInput^2
         paste("The square of", input$numInput, "is:", result)
      })
   })
}

# Run the application 
shinyApp(ui = ui, server = server)
