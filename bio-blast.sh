  472  make blastdb -in zebrafish.1.protein.faa -dbtype prot
  474  makeblastdb -in zebrafish.1.protein.faa -dbtype prot
  475  blastp -query mm-first.fa -db zebrafish.1.protein.faa
 #!/bin/bash
 head -n 11 mouse.1.protein.faa > mm-first.fa
 makeblastdb -in zebrafish.1.protein.faa -dbtype prot
 blastp -query mm-first.fa -db zebrafish.1.protein.faa
 blastp -query mm-first.fa -db zebrafish.1.protein.faa -out mm-first.x.zebrafish.txt
 head -498 mouse.1.protein.faa > mm-second.fa
 blastp -query mm-second.fa -db zebrafish.1.protein.faa -out mm-second.x.zebrafish.txt
 blastp -query mm-second.fa -db zebrafish.1.protein.faa -out mm-second.x.zebrafish.tsv -outfmt 6
 Rscript blastviz.R
