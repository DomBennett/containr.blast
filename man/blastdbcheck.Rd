% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{blastdbcheck}
\alias{blastdbcheck}
\title{blastdbcheck}
\usage{
blastdbcheck(arglist = arglist_get(...))
}
\arguments{
\item{arglist}{Arguments}
}
\description{
Run blastdbcheck
}
\examples{
library(outsider)
blastdbcheck <- module_import('blastdbcheck',
                              repo = 'dombennett/om..blast')
blastdbcheck('-help')
}
