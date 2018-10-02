cntnr_id <- 'blast_1'
img_id <- 'dombennett/om_blast_2.7.1'
outsider::.docker_start(cntnr_id = cntnr_id, img_id = img_id)
outsider::.docker_exec(cntnr_id = cntnr_id, 'makeblastdb', '-help')
outsider::.docker_stop(cntnr_id = cntnr_id)

args <- c('-in', 'test.fasta', '-dbtype', 'nucl')
outsider::.docker_exec(cntnr_id = cntnr_id, 'makeblastdb', args)

