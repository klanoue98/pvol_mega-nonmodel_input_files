#Create input file "units.csv"
#Columns= "sample", "unit", "Library ID", "Flowcell ID", "Sequencing platform", "flowcell lane", "Sample ID", "Index sequence", "R1 file path", "R2 file path", "Size of R1 fasta", "Size of R2 fasta"

#Sample number 1-20
sample<-c("S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", "S11", "S12", "S13", "S14", "S15", "S16", "S17", "S18", "S19", "S20")

unit<-c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)

#Library ID
library<-c("Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1", "Lib-1")

#Flowcell ID
flowcell<-c("HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2", "HC3TVCCX2")

#Sequencing platform
platform<-c("ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA", "ILLUMINA")

#flowcell lane
lane<-c(2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)

#sample ID
sample_id<-c("20043XD-02-01", "20043XD-02-02", "20043XD-02-03", "20043XD-02-04", "20043XD-02-05", "20043XD-02-06", "20043XD-02-07", "20043XD-02-08", "20043XD-02-09", "20043XD-02-10", "20043XD-02-11", "20043XD-02-12", "20043XD-02-13", "20043XD-02-14", "20043XD-02-15", "20043XD-02-16", "20043XD-02-17", "20043XD-02-18", "20043XD-02-19", "20043XD-02-20" )

#index sequence
barcode<-c("NCTCATGA+NTAGTCGA", "NCTCATGA+NGCTAGAA", "NCTCATGA+NCTCTAGG", "NCTCATGA+NCTTACGC", "CTCTCTAC+CTTAATAG", "NCTCATGA+NTAGCCTT", "NCTCATGA+NAAGGCTC", "NCTCATGA+NCGCATAA", "NTCTCAGG+NTAGTCGA", "NTCTCAGG+NGCTAGAA", "NTCTCAGG+NCTCTAGG",  "NTCTCAGG+NCTTACGC", "NTCTCAGG+NTTAATAG", "NTCTCAGG+NTAGCCTT", "NTCTCAGG+NAAGGCTC", 
"NTCTCAGG+NCGCATAA", "NCTCGCTA+NTAGTCGA", 
"NCTCGCTA+NGCTAGAA", "NCTCGCTA+NCTCTAGG", 
"NCTCGCTA+NCTTACGC")

#R1 file path
fq1<-c("/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-01_S0_L001_R1_001.fastq.gz", "/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-02_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-03_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-04_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-05_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-06_S0_L001_R1_001.fastq.gz",
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-07_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-08_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-09_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-10_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-11_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-12_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-13_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-14_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-15_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-16_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-17_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-18_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-19_S0_L001_R1_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-20_S0_L001_R1_001.fastq.gz")

#R2 file path
fq2<-c("/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-01_S0_L001_R2_001.fastq.gz", "/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-02_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-03_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-04_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-05_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-06_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-07_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-08_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-09_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-10_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-11_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-12_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-13_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-14_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-15_S0_L001_R2_001.fastq.gz",
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-16_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-17_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-18_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-19_S0_L001_R2_001.fastq.gz", 
"/work/marinegenomics/klanoue/lionfish_genome/data/WGS/WGS_raw/20043XD-02-20_S0_L001_R2_001.fastq.gz")

#Size of R1 fasta
kb1<-c(6428763240, 5885672712, 5950654992, 6224311536, 10500213504, 6820203064, 6599339768, 6284009992, 7347299696, 7604297800, 6535315696, 7016911280, 7152404688, 7520773192, 7243601952, 6979991848, 7582099112, 5932492056, 5571047456, 7067654200)

#Size of R2 fasta
kb2<-c(6428763240, 5885672712, 5950654992, 6224311536, 10500213504, 6820203064, 6599339768, 6284009992, 7347299696, 7604297800, 6535315696, 7016911280, 7152404688, 7520773192, 7243601952, 6979991848, 7582099112, 5932492056, 5571047456, 7067654200)

unitsdf<-data.frame(sample, unit, library, flowcell, platform, lane, sample_id, barcode, fq1, fq2, kb1, kb2)
unitsdf

write.table(unitsdf, units.txt)
