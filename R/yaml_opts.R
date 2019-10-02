#' @title YAML Key-Value Options
#'
#' @description Prints a list of the options specific to the University of Toronto thesis class that are passed to the TeX template specified as document class options.
#'
#' @export

yaml_opts <- function(){
  opts <- list(
    draft = c('true', 'false'),
    fontsize = c('10pt', '11pt', '12pt'),
    margins = c('narrowmargins', 'normalmargins', 'widemargins', 'extrawidemargins'),
    spacing = c('singlespaced', 'onehalfspaced', 'doublespaced'),
    notespacing = c('standardspacednotes'),
    clearpagestyle = c('empty', 'plain', 'standard'),
    loa = c('true', 'false'),
    listsintoc = c('true', 'false')
  )
  print(opts)
  invisible()
}
