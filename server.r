library(shiny)

drake <- function(R, fp, ne, fl, fi, fc, L) R * fp * ne * fl * fi * fc * L

shinyServer(
  function(input, output) {
    output$text1 <- renderText({drake(input$R,input$fp,input$ne,input$fl,input$fi,input$fc,input$L)})
  }
)

