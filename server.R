mpg <- function(am, qsec, wt) {
	mpg = 9.618 - 3.917 * wt + 1.226 * qsec + 2.936 * am
	mpg
}

shinyServer(
 	function(input, output) {
 		output$inputAm <- renderPrint({input$am})
 		output$inputQsec <- renderPrint({input$qsec})
 		output$inputWt <- renderPrint({input$wt})
 		output$result <- renderPrint({mpg(input$am, input$qsec, input$wt)})
	}
)