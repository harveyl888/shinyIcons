.onLoad <- function(...) {
  shiny::addResourcePath('shinyIcons', system.file('www', package = 'shinyIcons'))
  shiny::addResourcePath('materialIcons', system.file('www', package = 'materialIcons'))
}
fa_dep <- htmltools::htmlDependency(name = 'fontAwesome', version = '5.0.6', src = c(href='shinyIcons/fontawesome'), script = 'fontawesome-all.js')
md_dep <- htmltools::htmlDependency(name = 'MaterialIcons', version = '3.0.1', src = c(href='shinyIcons/material_icons'), stylesheet = 'material-icons.css')
