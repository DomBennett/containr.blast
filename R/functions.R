
base_function <- function(cmd, ...) {
  arglist <- arglist_get(...)
  possible_files <- c(arglist, paste0(arglist, '.nhr'), paste0(arglist, '.nin'),
                      paste0(arglist, '.nsq'))
  files_to_send <- filestosend_get(arglist = possible_files)
  otsdr <- outsider_init(pkgnm = 'om..blast', cmd = cmd, wd = getwd(),
                         files_to_send = files_to_send,
                         arglist = arglist)
  run(otsdr)
}

#' @name makeblastdb
#' @title makeblastdb
#' @description Run makeblastdb
#' @param ... Arguments
#' @example examples/makeblastdb.R
#' @export
makeblastdb <- function(...) {
  base_function(cmd = 'makeblastdb', ...)
}

#' @name blastn
#' @title blastn
#' @description Run blastn
#' @param ... Arguments
#' @example examples/blastn.R
#' @export
blastn <- function(...) {
  base_function(cmd = 'blastn', ...)
}

#' @name blast_formatter
#' @title blast_formatter
#' @description Run blast_formatter
#' @param ... Arguments
#' @example examples/blast_formatter.R
#' @export
blast_formatter <- function(...) {
  base_function(cmd = 'blast_formatter', ...)
}

#' @name blastdbcmd
#' @title blastdbcmd
#' @description Run blastdbcmd
#' @param ... Arguments
#' @example examples/blastdbcmd.R
#' @export
blastdbcmd <- function(...) {
  base_function(cmd = 'blastdbcmd', ...)
}

#' @name blastx
#' @title blastx
#' @description Run blastx
#' @param ... Arguments
#' @example examples/blastx.R
#' @export
blastx <- function(...) {
  base_function(cmd = 'blastx', ...)
}

#' @name dustmasker
#' @title dustmasker
#' @description Run dustmasker
#' @param ... Arguments
#' @example examples/dustmasker.R
#' @export
dustmasker <- function(...) {
  base_function(cmd = 'dustmasker', ...)
}

#' @name makembindex
#' @title makembindex
#' @description Run makembindex
#' @param ... Arguments
#' @example examples/makembindex.R
#' @export
makembindex <- function(...) {
  base_function(cmd = 'makembindex', ...)
}

#' @name rpsblast
#' @title rpsblast
#' @description Run rpsblast
#' @param ... Arguments
#' @example examples/rpsblast.R
#' @export
rpsblast <- function(...) {
  base_function(cmd = 'rpsblast', ...)
}

#' @name tblastn
#' @title tblastn
#' @description Run tblastn
#' @param ... Arguments
#' @example examples/tblastn.R
#' @export
tblastn <- function(...) {
  base_function(cmd = 'tblastn', ...)
}

#' @name windowmasker
#' @title windowmasker
#' @description Run windowmasker
#' @param ... Arguments
#' @example examples/windowmasker.R
#' @export
windowmasker <- function(...) {
  base_function(cmd = 'windowmasker', ...)
}

#' @name blastdb_aliastool
#' @title blastdb_aliastool
#' @description Run blastdb_aliastool
#' @param ... Arguments
#' @example examples/blastdb_aliastool.R
#' @export
blastdb_aliastool <- function(...) {
  base_function(cmd = 'blastdb_aliastool', ...)
}

#' @name convert2blastmask
#' @title convert2blastmask
#' @description Run convert2blastmask
#' @param ... Arguments
#' @example examples/convert2blastmask.R
#' @export
convert2blastmask <- function(...) {
  base_function(cmd = 'convert2blastmask', ...)
}

#' @name makeprofiledb
#' @title makeprofiledb
#' @description Run makeprofiledb
#' @param ... Arguments
#' @example examples/makeprofiledb.R
#' @export
makeprofiledb <- function(...) {
  base_function(cmd = 'makeprofiledb', ...)
}

#' @name rpstblastn
#' @title rpstblastn
#' @description Run rpstblastn
#' @param ... Arguments
#' @example examples/rpstblastn.R
#' @export
rpstblastn <- function(...) {
  base_function(cmd = 'rpstblastn', ...)
}

#' @name tblastx
#' @title tblastx
#' @description Run tblastx
#' @param ... Arguments
#' @example examples/tblastx.R
#' @export
tblastx <- function(...) {
  base_function(cmd = 'tblastx', ...)
}

#' @name blastdbcheck
#' @title blastdbcheck
#' @description Run blastdbcheck
#' @param ... Arguments
#' @example examples/blastdbcheck.R
#' @export
blastdbcheck <- function(...) {
  base_function(cmd = 'blastdbcheck', ...)
}

#' @name blastp
#' @title blastp
#' @description Run blastp
#' @param ... Arguments
#' @example examples/blastp.R
#' @export
blastp <- function(...) {
  base_function(cmd = 'blastp', ...)
}

#' @name deltablast
#' @title deltablast
#' @description Run deltablast
#' @param ... Arguments
#' @example examples/deltablast.R
#' @export
deltablast <- function(...) {
  base_function(cmd = 'deltablast', ...)
}

#' @name psiblast
#' @title psiblast
#' @description Run psiblast
#' @param ... Arguments
#' @example examples/psiblast.R
#' @export
psiblast <- function(...) {
  base_function(cmd = 'psiblast', ...)
}

#' @name segmasker
#' @title segmasker
#' @description Run segmasker
#' @param ... Arguments
#' @example examples/segmasker.R
#' @export
segmasker <- function(...) {
  base_function(cmd = 'segmasker', ...)
}
