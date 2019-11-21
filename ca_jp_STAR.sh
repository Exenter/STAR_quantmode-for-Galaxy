#!/bin/bash
export PATH="${PATH}:/home/guest/Software/STAR-2.7.3a/bin/Linux_x86_64"
mkdir /home/guest/Documents/Cours/Galaxy/galaxy_is_here/galaxy/database/genDir 2> err0.txt
export genDir=/home/guest/Documents/Cours/Galaxy/galaxy_is_here/galaxy/database/genDir
#index
STAR --runThreadN 4 --runMode genomeGenerate --genomeDir $genDir --genomeFastaFiles $1 2> err.txt
echo "DONE"
# Map reads
#--readFilesCommand zcat
STAR --genomeDir $genDir --runThreadN 4 --readFilesIn $3 $4
# Quantification
STAR --genomeDir $genDir --sjdbGTFfile $2 --quantMode GeneCounts --runThreadN 4 --readFilesIn $3 $4
