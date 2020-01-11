# STAR_quantmode-for-Galaxy
Autors : ALI Cheryn & PERNET Julien (M2 BBS Toulouse 2019)

# What is it ?
This is a bash wrapper of Star quantmode, for single or paired-end reads. It's meant to be integrated in Galaxy.
You can find the STAR documentation in their git : https://github.com/alexdobin/STAR
And Galaxy documentation here : https://galaxyproject.org/

# How to use it ?
Add this section to your tool_conf.yml in the galaxy repository:
```
 <section id="PROJET" name="Ca_jp_STAR">
    <tool file ="ca_jp_projet/ca_jp_STAR.xml" />
 </section>
  ```
Add provided scripts in the tool repertory , in a folder named "/ca_jp_projet".

Then change the path to your local STAR instance and genome directory in the ca_jp_STAR.sh file.

Done.

# How it works
You get a fasta genome as input, some feature annotations in GTF / GFF2 format and reads (single or paired end).
Plug it all in through Galaxy and after some time you get a quantification file, giving you the number of reads per gene, as follows :
```
column 1: gene ID
column 2: counts for unstranded RNA-seq
column 3: counts for the 1st read strand aligned with RNA (equivalent to htseq-count option -s yes)
column 4: counts for the 2nd read strand aligned with RNA (equivalent to htseq-count option -s reverse)
```

# Data
You can get test data here :
* Fasta : [Homo_sapiens.GRCh37.dna.chromosome.22.fa.gz](ftp.ensembl.org/pub/grch37/current/fasta/homo_sapiens/dna/Homo_sapiens.GRCh37.dna.chromosome.22.fa.gz)
* GTF : [Homo_sapiens.GRCh37.87.chr.gtf.gz](ftp.ensembl.org/pub/grch37/current/gtf/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gtf.gz)
* Reads : http://genomedata.org/rnaseq-tutorial/HBR_UHR_ERCC_ds_5pc.tar
