# University of Toronto R Markdown thesis template

This is the unofficial University of Toronto R Markdown thesis template. You can find a copy of this template at https://github.com/mattwarkentin/torontodown.

The template used in this package is a modified version of the TeX template developed and maintained by Francois Pitt, which can be found at: (https://www.sgs.utoronto.ca/academic-progress/program-completion/formatting/)

To install the template, be sure you have the following:

 - [pandoc][0]
 - [LaTeX][1]
 - [R >= 3.5][2]
 - [RStudio][3] (optional, but it helps)

To get this document, you have opened a **New Project** from RStudio
using the ***University of Toronto Thesis*** template.

## Rendering

To render your thesis, you can open `index.Rmd` (or whatever you name the file; so long as it agrees with the name in `_bookdown.yml`) in RStudio and then hit the "knit" button. Alternatively, you can use:

```r
rmarkdown::render("index.Rmd")
```

Your thesis will be deposited in the `_book/` directory (this directory will be created upon first knitting).

## Components

The following components are ones you should edit to customize your thesis:

### _bookdown.yml

This is the main configuration file for your thesis. Arrange the order of your
chapters in this file and ensure that the names match the names in your folders.

### index.Rmd

This file contains all the meta information that goes at the beginning of your
document. Currently, the introduction is included there, but you can leave that
part blank if you wish. 

### pre/

This folder contains all of the Rmd files to be included in the pretext of your
dissertation (e.g. abstract, acknowledgements, etc.).

There is a slight caveat to all of these files: the very first line must be 
plain text or the rendering will be screwed up.

### chapters/

This folder contains the Rmd files for each chapter in your dissertation. Modify as you will.

### bib/

Store your bibliography (as bibtex files) here. If it helps you stay organized, you may store your references in separate bib files, by chapter, perhaps.

### csl/

Specific style files for bibliographies should be stored here. If you want to change the citation style, you can download the citation style language (CSL) format from this link: https://github.com/citation-style-language/styles

Place the new CSL file in the csl/ directory and reference it in the index.Rmd YAML header. Citations are handled using pandoc-citeproc

### figures/ and data/

These should be self explanatory. Store your figures and data here and reference them in your document. 


 [0]: http://pandoc.org/
 [1]: https://www.latex-project.org/get/
 [2]: https://r-project.org
 [3]: https://rstudio.org
