# STAR_quantmode-for-Galaxy

# What is it ?
This is a bash wrapper of Star quantmode. It's meant to be integrated in Galaxy.

# How to use it ?
Add this section to your tool_conf.yml :
```
 <section id="PROJET" name="Ca_jp_STAR">
    <tool file ="ca_jp_projet/ca_jp_STAR.xml" />
 </section>
  ```
Add provided files in the tool repertory , in a folder named "/ca_jp_projet".
Done.

# Data
You can get test data here :
* Fasta : [Homo_sapiens.GRCh37.dna.chromosome.22.fa.gz](ftp.ensembl.org/pub/grch37/current/fasta/homo_sapiens/dna/Homo_sapiens.GRCh37.dna.chromosome.22.fa.gz)
* GTF : [Homo_sapiens.GRCh37.87.chr.gtf.gz](ftp.ensembl.org/pub/grch37/current/gtf/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gtf.gz)
* Reads : http://genomedata.org/rnaseq-tutorial/HBR_UHR_ERCC_ds_5pc.tar
