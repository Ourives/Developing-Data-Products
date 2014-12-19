bmi_function <- function(id1,id2) id1/((id2/100)^2)

shinyServer(
    function(input, output) {
        output$bmi <- renderPrint({bmi_function(input$id1,input$id2)})
    }
)