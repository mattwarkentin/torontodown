thesis_skeleton <- function (path, ...)
{
  # Crete new directory
  fs::dir_create(path, recurse = TRUE)

  # Location of files on system
  local_path <- glue::glue('{system.file(package = "torontodown")}/rstudio/templates/project/resources/')

  # Copy files to new directory
  fs::dir_copy(
    path = local_path,
    new_path = path,
    overwrite = TRUE
    )
}
