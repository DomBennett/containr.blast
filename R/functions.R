pkgnm <- environmentName(env = environment())
# all output files are placed in working_dir/ as indicated by Dockerfile
docker_wd <- '/working_dir'
files_to_retrieve <- '/working_dir/.'

#' @name makeblastdb
#' @title makeblastdb
#' @description Run makeblastdb
#' @param ...
#' @example examples/makeblastdb
#' @export
makeblastdb <- function(...) {
  args <- as.vector(match.call())[-1]
  .args_check(args)
  files_to_send <- .which_args_are_filepaths(args)
  outsider::.run(pkgnm = pkgnm, docker_wd = docker_wd,
                 files_to_send = files_to_send,
                 files_to_retrieve = files_to_retrieve, 'makeblastdb', args)
}

#' @name blastn
#' @title blastn
#' @description Run blastn
#' @param ...
#' @example examples/blastn.R
#' @export
blastn <- function(...) {
  args <- as.vector(match.call())[-1]
  .args_check(args)
  files_to_send <- which_args_are_filepaths(passed_args)
  outsider::.run(pkgnm = pkgnm, 'blastn', files_to_send = files_to_send,
                 files_to_retrieve = files_to_retrieve, args)
}