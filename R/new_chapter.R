#' Create New Chapter
#'
#' @description Create a new chapter in your thesis using a R Markdown file
#'
#' @param name Name of file.
#'
#' @importFrom assertthat assert_that
#'
#' @export

new_chapter <- function(name = NULL){
  assertthat::assert_that(is.character(name))

  name <- stringr::str_replace_all(fs::path_ext_remove(name), ' ', '_')

  file_name <- glue::glue('{here::here()}/chapters/{name}.Rmd')

  fs::file_create(file_name)

  rstudioapi::navigateToFile(file_name)
  rstudioapi::navigateToFile(here::here('_bookdown.yml'), 3, 1)

  add_line <- glue::glue('"chapters/{fs::path_file(file_name)}"')

  cli::cat_rule()
  cli::cat_line(cli::symbol$tick, glue::glue(' Creating {fs::path_file(file_name)}'))
  cli::cat_line(cli::symbol$tick, ' Opening _bookdown.yml')
  cli::cat_line(cli::symbol$record, ' Paste the line below into the rmd_files section:')
  cli::cat_line(cli::col_green(add_line))
  if(interactive() && clipr::clipr_available()){
    clipr::write_clip(add_line)
    cli::cat_line('[Copied to clipboard]')
  }
  cli::cat_rule()
}
