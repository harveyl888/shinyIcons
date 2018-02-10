#' Create a fontawesome 5 icon
#'
#' Create a fontawesome 5 icon
#'
#' @param name Name of icon without the fa- prefix
#' @param iconstyle Icon style.  By default icons are drawn as solid using the fas class.
#'     The fab class should be included for brands and far can be used for regular,
#'     although many icons are not available as regular in the free set
#' @param class Additional classes to customize the icon style such as changing the
#'     size or animating.  See \href{https://fontawesome.com/how-to-use/svg-with-js}{usage examples}
#'     for details.
#' @param style Style attributes such as color or background
#' @param transform Apply power transforms (position, flip and rotate) - see
#'     {https://fontawesome.com/how-to-use/svg-with-js#power-transforms}{power transforms}
#'     for examples
#' @param mask Combine two icons - see {https://fontawesome.com/how-to-use/svg-with-js#masking}{masking}
#'     for examples
#'
#' @examples
#' icon_fa('star', iconstyle = 'far', class = 'fa-5s')        ## large open star
#' icon_fa('spinner', class = 'pulse')                        ## animated spinner
#' icon_fa('magic', class = 'fa-5x', transform = 'rotate-90', style = 'color:Tomato')    ## rotated icon
#' \dontrun{
#' htmltools::div(class = 'fa-4x', icon_fa('pencil-alt', transform = 'shrink-10 up-.5', mask = 'fas fa-comment'))    ## mask - pencil in comment
#' }
#'
#' @importFrom htmltools tags attachDependencies tagAppendAttributes
#' @export
icon_fa <- function(name, iconstyle = 'fas', class = NULL, style = NULL, transform = NULL, mask = NULL) {
  if (!iconstyle %in% c('fas', 'far', 'fab')) iconstyle <- 'fas'
  iconClass <- ""
  if (!is.null(name))
    iconClass <- paste0(iconstyle, " ", "fa-", name)
  if (!is.null(class))
    iconClass <- paste(iconClass, class)
  iconTag <- tags$i(class = iconClass)
  if (!is.null(style))
    iconTag <- tagAppendAttributes(iconTag, style = style)
  if (!is.null(transform))
    iconTag <- tagAppendAttributes(iconTag, `data-fa-transform` = transform)
  if (!is.null(mask))
    iconTag <- tagAppendAttributes(iconTag, `data-fa-mask` = mask)
  attachDependencies(iconTag, fa_dep)
}


#' layer multiple icons
#'
#' layer multiple icons
#'
#' @param icons A list of font awesome 5 icons, each defined by  \code{\link{icon_fa}()}
#'
#' @importFrom htmltools tags tagList
#' @export
icon_layer <- function(icons = list()) {
  if (length(icons) > 0) {
    iconTag <- tags$span(class = 'fa-layers fa-fw', tagList(icons))
  }
}


#' add a counter to an icon
#'
#' add a counter to an icon
#'
#' @param counter Counter value
#' @param style Style attributes such as color or background
#'
#' @importFrom htmltools tags attachDependencies tagAppendAttributes
#' @export
layer_counter <- function(counter, style = NULL) {
  iconTag <- tags$span(class = 'fa-layers-counter', counter)
  if (!is.null(style))
    iconTag <- tagAppendAttributes(iconTag, style = style)
  iconTag
}


#' add text to an icon
#'
#' add text to an icon
#'
#' @param text Text
#' @param class Additional classes to customize the icon style such as changing the
#'     size or animating.  See \href{https://fontawesome.com/how-to-use/svg-with-js}{usage examples}
#'     for details.
#' @param style Style attributes such as color or background
#' @param transform Apply power transforms (position, flip and rotate) - see
#'     {https://fontawesome.com/how-to-use/svg-with-js#power-transforms}{power transforms}
#'     for examples
#'
#' @importFrom htmltools tags attachDependencies tagAppendAttributes
#' @export
layer_text <- function(counter, class = NULL, style = NULL, transform = NULL) {
  iconTag <- tags$span(class = 'fa-layers-text', counter)
  if (!is.null(class))
    iconTag <- tagAppendAttributes(iconTag, class = class)
  if (!is.null(style))
    iconTag <- tagAppendAttributes(iconTag, style = style)
  if (!is.null(transform))
    iconTag <- tagAppendAttributes(iconTag, `data-fa-transform` = transform)
  iconTag
}
