library(shiny)
library(shinyIcons)

ui <- fluidPage(
  icon_fa('star'),
  icon_fa('star', class = 'fa-xs'),
  icon_fa('star', iconstyle = 'far', class = 'fa-5x'),
  icon_fa('spinner', class = 'fa-pulse'),
  icon_fa('magic', class = 'fa-5x'),
  icon_fa('magic', class = 'fa-5x', transform = 'rotate-90', style = 'color:Tomato'),
  div(class = 'fa-4x', icon_fa('pencil-alt', transform = 'shrink-10 up-.5', mask = 'fas fa-comment'))
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
