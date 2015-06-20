library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("The Drake Equation"),
    sidebarPanel(
      numericInput('R', HTML("R*, [0, &#8734) <font size=1>The average rate of galactic star formations per year</font>"), 1, min = 0),
      numericInput('fp', HTML("f<sb>p</sub>, [0, 1] <font size=1>The fraction of extant stars with a planetary system</font>"), .2, min = 0, max = 1, step = .01),
      numericInput('ne', HTML("n<sub>e</sub>, [0, &#8734) <font size=1>Of stars that have planetary systems, the number of planets that can support life</font>"), 1, min = 0, step = .01),
      numericInput('fl', HTML("f<sub>l</sub>, [0, 1] <font size=1>Fraction of favorable planets that develope life</font>"), 1, min = 0, max = 1, step = .01),
      numericInput('fi', HTML("f<sub>i</sub>, [0, 1] <font size=1>Fraction of life bearing planets that develope intelligent life</font>"), 1, min = 0, max = 1, step = .01),
      numericInput('fc', HTML("f<sub>c</sub>, [0, 1] <font size=1>Fraction of intelligent civilizations which develope technology detectable from interstellar distances</font>"), .1, min = 0, max = 1, step = .01),
      numericInput('L', HTML("L, [0, &#8734) <font size=1>Detectable civilizations' time to failure in years</font>"), 1000, min = 0),
      width = 6
    ),
    mainPanel(
      p(HTML("<font size = 5>Instructions</font>")),
      p("Default values are lower bounds of those chosen by Dr. Drake for his original estimation in 1961. Any field may be changed to any valid value. Note that no value may be less than zero and no factional value may be greater than 1. The new estimate is displayed automatically with a change to any factor value."),
      p(HTML('<i>N</i> = R* &times   f<sub>p</sub> &times n<sub>e</sub> &times f<sub>l</sub> &times f<sub>i</sub> &times f<sub>c</sub> &times L')),
      p("The number of intelligent civilizations in our galaxy could be as high as:"),
      print(textOutput('text1')),
      width = 6
    )
  )
)


