# Pvol mega-nonmodel Input Files

The purpose of this repository is to record the creation of files needed to run Eric Anderson's mega-non-model-wgs-snakemake-workflow (git@github.com:eriqande/mega-non-model-wgs-snakeflow.git). 

The files needed for input include the following:
- units.tsv
- chromosomes.tsv
- scaffolds.tsv
- config.yaml
- config.yaml (seperate yaml for running on slurm)

Eric has some great examples and helper scripts to make the above files, but I found that my de novo genome needed some customization in the helper scripts. 

R script "make_units.R creates the units.tsv file.

Script reorder_chromosomes.sh is used prior to make_chromosomes_and_scaffolds.R. I found that without assigning chromosomes to the do novo genome, the r script was unable to identify them, and would put all of the scaffolds and chromosomes into the scaffolds.tsv file.


