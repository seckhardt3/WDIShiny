
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
              choices = list("School enrollment, primary (% net)" = "SE.PRM.NENR", "School enrollment, secondary (% net)" = "SE.SEC.NENR", 
                             "School enrollment, tertiary (% gross)" = "SE.TER.ENRR"), 
              selected = "SE.TER.ENRR"),
  sliderInput("Year", "Data from years:", 
              min=1980, max=2012, value=2010,  step=1,
              format="###0",animate=FALSE),
  
  htmlOutput("choroplethplot"))
  )

