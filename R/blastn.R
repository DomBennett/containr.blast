run <- function() {
  # run command
  res1 <- sys::exec_wait(cmd = 'docker', args = c('exec',
                                                 'dombennett_containr.blast',
                                                 ))
  # transfer results

}
