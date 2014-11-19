
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Choropleth for which indicator and time frame"),

  selectInput("indicator", label = h3("Indicator"), 
              choices = list("Child Mortality (under 5 per 1000 live births)" = "SH.DYN.MORT", "Income share held by highest 10%" = "SI.DST.10TH.10", 
                             "Sex ratio at birth (males per 1000 females)" = "SP.POP.BRTH.MF"), 
              selected = "SP.POP.BRTH.MF"),
  sliderInput("Year", "Data from years:", 
              min=1980, max=2012, value=2010,  step=1,
              format="###0",animate=FALSE),
  
  htmlOutput("choroplethplot"))
  )

