<!-- badges: start -->
[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build status](https://github.com/mattwarkentin/torontodown/workflows/R-CMD-check/badge.svg)](https://github.com/mattwarkentin/torontodown/actions?workflow=R-CMD-check)
[![](https://img.shields.io/github/last-commit/mattwarkentin/torontodown.svg)](https://github.com/mattwarkentin/torontodown/commits/master)
![GitHub repo size](https://img.shields.io/github/repo-size/mattwarkentin/torontodown)
<!-- badges: end -->

---

# torontodown <img src='man/figures/logo.png' align="right" height="138.5" />

This project is a modified version Chester Ismay's [`{thesisdown}`][4] and Zhian Kavmar's [`{beaverdown}`][5] package to provide support for University of Toronto's SGS thesis formatting guidelines.

Under the hood, the University of Toronto LaTeX template is used to ensure that documents conform precisely to the School of Graduate Studies (SGS) submission standards. At the same time, composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and **R** code and its output can be seamlessly included using [rmarkdown](http://rmarkdown.rstudio.com).

Currently, the PDF version has full feature and formatting support. All other document formats are experimental and are not guaranteed to format properly, but may be suitable for intermediate tasks, such as getting committee feedback.

If you would like enriched support for a particular format, [please file an issue](https://github.com/mattwarkentin/torontodown/issues).

---

## Requirements

To install `{torontodown}` and use it for your dissertation/thesis, you will need:

 - [pandoc][0]
 - [LaTeX][1]
 - [R][2]
 - [RStudio][3] (optional, but strongly recommended)

Recent versions of RStudio ship with `pandoc`, so this does not need to be installed separately. In addition, you may install a lightweight `TeX` distribution using the `{tinytex}` package (described further below). 

## Installation

To install `{torontodown}`, open Rstudio and enter the following code:

```r
if (!require("remotes")) install.packages("remotes", repos = "http://cran.rstudio.org")
remotes::install_github("mattwarkentin/torontodown")
```

If you do not already have a `TeX` distribution installed, run the following code (this may take several minutes):
```r
library(torontodown)
install_tinytex()
```

## Usage

To start creating your thesis document, open RStudio and select **File > New Project... > New Directory** and then select the **University of Toronto Thesis** from the list of **Projects**.

Make sure to give your project a title and save it to the correct path. RStudio will navigate to that directory, and should automatically open several important files. If you navigate to the file `index.Rmd` and click __Knit__, you should see a properly formatted PDF thesis document (_NOTE: The first render may take several minutes while `{tinytex}` installs required `LaTeX` packages_).

Instructions for editing the various files can be found in the [README][6].

---

Please note that the 'torontodown' project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

 [0]: http://pandoc.org/
 [1]: https://www.latex-project.org/get/
 [2]: https://r-project.org
 [3]: https://rstudio.org
 [4]: https://github.com/ismayc/thesisdown
 [5]: https://github.com/zkamvar/beaverdown/
 [6]: https://github.com/mattwarkentin/torontodown/tree/master/inst/rstudio/templates/project/resources#readme
