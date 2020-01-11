#!/bin/bash
# Copyright 2019 Ali Cheryn & PERNET Julien
# This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.


# Change this path to your local STAR instance
export PATH="${PATH}:/home/guest/Software/STAR-2.7.3a/bin/Linux_x86_64"
# Change these paths to your GALAXY database
mkdir /home/guest/Documents/Cours/Galaxy/galaxy_is_here/galaxy/database/genDir 2> err0.txt
export genDir=/home/guest/Documents/Cours/Galaxy/galaxy_is_here/galaxy/database/genDir

#index
echo "Starting index"
STAR --runThreadN 4 --runMode genomeGenerate --genomeDir $genDir --genomeFastaFiles $1 2> err.txt
echo "DONE"

# Map reads
echo "Starting mapping reads"
STAR --genomeDir $genDir --runThreadN 4 --readFilesIn $3 $4
echo "DONE"

# Quantification
echo "Starting quantification"
STAR --genomeDir $genDir --sjdbGTFfile $2 --quantMode GeneCounts --runThreadN 4 --readFilesIn $3 $4
echo "DONE"
