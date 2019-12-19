#' @title Place thesis components.
#'
#' @description Functions for placing dissertation components. These functions write LaTeX and HTML code behind-the-scenes so you don't have to.
#'
#' @return NULL
#'
#' @examples
#' \dontrun{
#' here_ref()
#' here_app()
#' }
#'
#' @rdname here
#' @export

here_ref <- function() {
  if (knitr::is_latex_output()) {
    x <- glue::glue(
      '\\noindent',
      '\\setlength{\\parindent}{-0.20in}',
      '\\setlength{\\leftskip}{0.20in}',
      '\\setlength{\\parskip}{8pt}',
      '<div id="refs"></div>',
      .sep = '\n', .open = '<<', .close = '>>'
    )
    knitr::asis_output(x)
  } else {
    knitr::asis_output('<div id="refs"></div>')
  }
}

#' @name here
#' @export

here_app <- function() {
  if (knitr::is_latex_output()) {
    knitr::raw_latex('\\appendix')
  }
}
