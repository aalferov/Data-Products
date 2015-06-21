library(shiny)
library(caret)
library(randomForest)

predictSpecies <- function(sepalLength, sepalWidth, petalLength, petalWidth) {
  model <- randomForest(Species ~. , data = iris, method = "class")
  data <- data.frame(Sepal.Length = sepalLength, Sepal.Width = sepalWidth, Petal.Length = petalLength, Petal.Width = petalWidth)
  predict(model, data, type = "class")
}


shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$Sepal.Length})
    output$oid2 <- renderPrint({input$Sepal.Width})
    output$oid3 <- renderPrint({input$Petal.Length})
    output$oid4 <- renderPrint({input$Petal.Width})
    output$prediction <- renderPrint({predictSpecies(input$Sepal.Length, input$Sepal.Width, input$Petal.Length, input$Petal.Width)})
  }
)