build <- function() {
  res <- sys::exec_wait(cmd = 'docker', args = c('build', '-t',
                                                 'dombennett/containr.blast',
                                                 '.'))
  res == 0
}

start <- function() {
  res <- sys::exec_wait(cmd = 'docker', args = c('run', '-t', '-d', '--name',
                                                 'dombennett_containr.blast',
                                                 'dombennett/containr.blast'))
  res == 0
}

stop <- function() {
  res1 <- sys::exec_wait(cmd = 'docker', args = c('stop',
                                                  'dombennett_containr.blast'))
  res2 <- sys::exec_wait(cmd = 'docker', args = c('rm',
                                                  'dombennett_containr.blast'))
  res1 == 0 && res2 == 0
}

