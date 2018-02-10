library(shiny)
library(shinyIcons)

ui <- fluidPage(
  icon_fa('star'),
  icon_fa('star', class = 'fa-xs'),
  icon_fa('star', iconstyle = 'far', class = 'fa-5x'),
  icon_fa('spinner', class = 'fa-pulse'),
  icon_fa('magic', class = 'fa-5x'),
  icon_fa('magic', class = 'fa-5x', transform = 'rotate-90', style = 'color:Tomato'),
  div(class = 'fa-4x', icon_fa('pencil-alt', transform = 'shrink-10 up-.5', mask = 'fas fa-comment')),
  br(),
  br(),
  div(class = 'fa-4x',
      icon_layer(icons = list(
        icon_fa('circle', style = 'color:Tomato'),
        icon_fa('times', class = 'fa-inverse', transform = 'shrink-6')
        )),
      icon_layer(icons = list(
        icon_fa('certificate'),
        layer_text('NEW', class = 'fa-inverse', transform = 'shrink-11.5 rotate--30', style='font-weight:900')
      )),
      icon_layer(icons = list(
        icon_fa('envelope'),
        layer_counter(1419, style = 'background:Tomato')
        ))
  ),
  br(),
  br(),
  icon_md('face', class = 'md-48')
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
