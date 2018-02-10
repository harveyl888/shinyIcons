#' Create a material design icon
#'
#' Create a material design icon
#'
#' @param name Name of icon
#' @param class Additional classes to customize the icon style such as changing the
#'     size.  See \href{http://google.github.io/material-design-icons/#icon-font-for-the-web}{usage examples}
#'     for details.
#'
#' @examples
#' icon_md('face')        ## face icon
#' icon_md('face', class = 'md-18')        ## face icon 18px
#' icon_md('face', class = 'md-dark md-inactive')        ## inactive, dark face icon
#'
#' @importFrom htmltools tags attachDependencies tagAppendAttributes
#' @export
icon_md <- function(name, class = NULL) {
  iconClass <- ""
  iconTag <- tags$i(class = "material-icons", name)
  if (!is.null(class))
    iconTag <- tagAppendAttributes(iconTag, class = class)
  attachDependencies(iconTag, md_dep)
}


#' htmldependency for material design icons in rmarkdown documents
#'
#' @importFrom htmltools tagList htmlDependency
#' @export
html_dependency_md <- function(){
  tagList(htmlDependency(name = 'MaterialIcons', version = '3.0.1', src = system.file('www/material_icons', package = "shinyIcons"), stylesheet = 'material-icons.css'))
}
