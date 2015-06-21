library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Iris species prediction"),
  sidebarPanel(
    h2('Please choose parameters of iris species you want to predict'),
    numericInput('Sepal.Length', 'Sepal.Length', 5, 4, 8, step = 0.1),
    numericInput('Sepal.Width', 'Sepal.Width', 3, 2, 5, step = 0.1),
    numericInput('Petal.Length', 'Petal.Length', 2, 1, 7, step = 0.1),
    numericInput('Petal.Width', 'Petal.Width', 1, 0, 3, step = 0.1),
    submitButton('Predict')
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered'),
    verbatimTextOutput("oid1"),
    verbatimTextOutput("oid2"),
    verbatimTextOutput("oid3"),
    verbatimTextOutput("oid4"),
    h4('Which result in prediction of '),
    verbatimTextOutput("prediction")
  )
))


