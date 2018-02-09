.onLoad <- function(...) {
  shiny::addResourcePath('shinyIcons', system.file('www', package = 'shinyIcons'))
}
fa_dep <- htmltools::htmlDependency(name = 'fontAwesome', version = '5.0.6', src = c(href='shinyIcons/fontawesome'), script = 'fontawesome-all.js')
