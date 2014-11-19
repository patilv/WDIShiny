library(WDI)
library(shiny)
suppressPackageStartupMessages(library(googleVis))
shinyServer(function(input, output) {

  
  output$choroplethplot <- renderGvis({
    df=WDI(country = "all", indicator =input$indicator ,
           start = input$Year, end = input$Year, extra = FALSE, cache = NULL)
    
  myData=na.omit(df)
  colnames(myData)=c("iso2c","country","Indicator", "year")
    gvisGeoChart(myData,locationvar="country",colorvar="Indicator")
    

})})
