
arglist <- c('-query', '/Users/djb208/Coding/supersmartR-workshop/pipelines/3_supertree/1_phylotaR/blast/testdbfl',
             '-db', '/Users/djb208/Coding/supersmartR-workshop/pipelines/3_supertree/1_phylotaR/blast/testdbfl',
             '-outfmt', '6 qseqid sseqid pident length evalue qcovs qcovhsp',
             '-dust', 'no', '-strand', 'plus', '-evalue', '1e-10', '-out',
             'testoutfl')

base_function <- function(cmd, arglist) {
  possible_files <- c(arglist, paste0(arglist, '.nhr'), paste0(arglist, '.nin'),
                      paste0(arglist, '.nsq'))
  files_to_send <- unique(filestosend_get(arglist = possible_files))
  parsed_arglist <- arglist
  for (file_to_send in files_to_send) {
    parsed_arglist[arglist == file_to_send] <- basename(file_to_send)
  }
  if ("-out" %in% arglist) {
    out_index <- which(arglist == '-out')[1] + 1
    output_file <- arglist[out_index]
    wd <- dirpath_get(output_file)
    parsed_arglist[out_index] <- basename(parsed_arglist[out_index])
  } else if (length(files_to_send) > 0) {
    # assume files_to_send are where output should be
    wd <- dirpath_get(files_to_send[[1]])
  } else {
    wd <- getwd()
  }
  otsdr <- outsider_init(pkgnm = 'om..blast', cmd = cmd, wd = wd,
                         files_to_send = files_to_send,
                         arglist = parsed_arglist)
  run(otsdr)
}

#' @name makeblastdb
#' @title makeblastdb
#' @description Run makeblastdb
#' @param arglist Arguments
#' @example examples/makeblastdb.R
#' @export
makeblastdb <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'makeblastdb', arglist = arglist)
}

#' @name blastn
#' @title blastn
#' @description Run blastn
#' @param arglist Arguments
#' @example examples/blastn.R
#' @export
blastn <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blastn', arglist = arglist)
}

#' @name blast_formatter
#' @title blast_formatter
#' @description Run blast_formatter
#' @param arglist Arguments
#' @example examples/blast_formatter.R
#' @export
blast_formatter <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blast_formatter', arglist = arglist)
}

#' @name blastdbcmd
#' @title blastdbcmd
#' @description Run blastdbcmd
#' @param arglist Arguments
#' @example examples/blastdbcmd.R
#' @export
blastdbcmd <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blastdbcmd', arglist = arglist)
}

#' @name blastx
#' @title blastx
#' @description Run blastx
#' @param arglist Arguments
#' @example examples/blastx.R
#' @export
blastx <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blastx', arglist = arglist)
}

#' @name dustmasker
#' @title dustmasker
#' @description Run dustmasker
#' @param arglist Arguments
#' @example examples/dustmasker.R
#' @export
dustmasker <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'dustmasker', arglist = arglist)
}

#' @name makembindex
#' @title makembindex
#' @description Run makembindex
#' @param arglist Arguments
#' @example examples/makembindex.R
#' @export
makembindex <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'makembindex', arglist = arglist)
}

#' @name rpsblast
#' @title rpsblast
#' @description Run rpsblast
#' @param arglist Arguments
#' @example examples/rpsblast.R
#' @export
rpsblast <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'rpsblast', arglist = arglist)
}

#' @name tblastn
#' @title tblastn
#' @description Run tblastn
#' @param arglist Arguments
#' @example examples/tblastn.R
#' @export
tblastn <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'tblastn', arglist = arglist)
}

#' @name windowmasker
#' @title windowmasker
#' @description Run windowmasker
#' @param arglist Arguments
#' @example examples/windowmasker.R
#' @export
windowmasker <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'windowmasker', arglist = arglist)
}

#' @name blastdb_aliastool
#' @title blastdb_aliastool
#' @description Run blastdb_aliastool
#' @param arglist Arguments
#' @example examples/blastdb_aliastool.R
#' @export
blastdb_aliastool <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blastdb_aliastool', arglist = arglist)
}

#' @name convert2blastmask
#' @title convert2blastmask
#' @description Run convert2blastmask
#' @param arglist Arguments
#' @example examples/convert2blastmask.R
#' @export
convert2blastmask <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'convert2blastmask', arglist = arglist)
}

#' @name makeprofiledb
#' @title makeprofiledb
#' @description Run makeprofiledb
#' @param arglist Arguments
#' @example examples/makeprofiledb.R
#' @export
makeprofiledb <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'makeprofiledb', arglist = arglist)
}

#' @name rpstblastn
#' @title rpstblastn
#' @description Run rpstblastn
#' @param arglist Arguments
#' @example examples/rpstblastn.R
#' @export
rpstblastn <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'rpstblastn', arglist = arglist)
}

#' @name tblastx
#' @title tblastx
#' @description Run tblastx
#' @param arglist Arguments
#' @example examples/tblastx.R
#' @export
tblastx <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'tblastx', arglist = arglist)
}

#' @name blastdbcheck
#' @title blastdbcheck
#' @description Run blastdbcheck
#' @param arglist Arguments
#' @example examples/blastdbcheck.R
#' @export
blastdbcheck <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blastdbcheck', arglist = arglist)
}

#' @name blastp
#' @title blastp
#' @description Run blastp
#' @param arglist Arguments
#' @example examples/blastp.R
#' @export
blastp <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'blastp', arglist = arglist)
}

#' @name deltablast
#' @title deltablast
#' @description Run deltablast
#' @param arglist Arguments
#' @example examples/deltablast.R
#' @export
deltablast <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'deltablast', arglist = arglist)
}

#' @name psiblast
#' @title psiblast
#' @description Run psiblast
#' @param arglist Arguments
#' @example examples/psiblast.R
#' @export
psiblast <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'psiblast', arglist = arglist)
}

#' @name segmasker
#' @title segmasker
#' @description Run segmasker
#' @param arglist Arguments
#' @example examples/segmasker.R
#' @export
segmasker <- function(arglist = arglist_get(...)) {
  base_function(cmd = 'segmasker', arglist = arglist)
}
