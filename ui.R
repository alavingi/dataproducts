shinyUI(
 pageWithSidebar(
 # Application title
 headerPanel("Vehicle miles per gallon prediction"),
 sidebarPanel(
 numericInput('am', 'Transmission type - 1 for manual, 0 for automatic', 1),
 numericInput('qsec', '1/4 mile time in seconds - enter numeric value', 15),
 numericInput('wt', 'Vehicle weight in 1000 lbs', 3),
 submitButton('Submit')
 ),
 mainPanel(
 h3('Results of prediction of miles per gallon:'),
 h4('You entered a transmission type: '),
 verbatimTextOutput("inputAm"),
 h4('You entered a qsec value: '),
 verbatimTextOutput("inputQsec"),
 h4('You entered a vehicle weight: '),
 verbatimTextOutput("inputWt"),
 h4('Which resulted in a MPG prediction of '),
 verbatimTextOutput("result")
 )
 )
)