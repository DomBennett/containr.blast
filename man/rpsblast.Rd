% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{rpsblast}
\alias{rpsblast}
\title{rpsblast}
\usage{
rpsblast(arglist = arglist_get(...))
}
\arguments{
\item{arglist}{Arguments}
}
\description{
Run rpsblast
}
\examples{
library(outsider)
rpsblast <- module_import('rpsblast', repo = 'dombennett/om..blast')
rpsblast('-help')
}
