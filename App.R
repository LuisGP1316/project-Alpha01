library(shiny)

ui <- fluidPage(
  titlePanel("Saludo Personalizado"),
  sidebarLayout(
    sidebarPanel(
      textInput("nombre", "Ingresa tu nombre:", "")
    ),
    mainPanel(
      textOutput("saludo")
    )
  )
)

server <- function(input, output) {
  output$saludo <- renderText({
    paste("¡Hola,", input$nombre, "! Bienvenido a mi aplicación Shiny.")
  })
}

shinyApp(ui = ui, server = server)