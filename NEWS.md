# torontodown 0.1.0

 - Initial release of `torontodown`
 - PDF format of thesis document working

# beaverdown 0.2.1

## NEW FEATURES

 - The option `link-citations: yes` is added to the YAML metadata. Now, when the
   PDF is rendered, citations will be linked AND when the html book is rendered, 
   citations will be moved to the end of the chapter.
 - update `render_caption()` so that it includes the `link-citations` metadata

# beaverdown 0.2.0

## NEW FUNCTIONS

 - `process_citations()` is used by `render_caption()` internally and allows one
 to process text with citations using any bib or csl.
 - `iflatex()` is a function to conditionally print latex statements or nothing.

# beaverdown 0.1.0

## NEW FUNCTIONS

 - `inc()` allows you to include text in the YAML from a file. Note that there
 should be no markup here.
 - `render_caption()` allows you to render a caption with markdown formatting.

## NEW FEATURES

 - `thesis_pdf` will now set a default out.width and root.dir

# thesisdown 0.0.2

- Changed default filename (in directions) to be `index` instead of `skeleton` to match with gitbook requirements
- Added preliminary files `00--prelim.Rmd` and changed `abstract.Rmd` to `00-abstract.Rmd` to match
with renaming of files so that `index.Rmd` always comes last alphabetically
- Removed _book and _bookdown_files directories since they are stored at <https://github.com/ismayc/thesisdown_book/tree/gh-pages>

# thesisdown 0.0.1

- Initial release
- PDF version working
