# Pvol mega-non-model-wgs-snakeflow Input Files

The purpose of this repository is to record the creation of files needed to run Eric Anderson's mega-non-model-wgs-snakemake-workflow (git@github.com:eriqande/mega-non-model-wgs-snakeflow.git). 

The files needed for input include the following:
- units.tsv
- chromosomes.tsv
- scaffolds.tsv
- config.yaml
- config.yaml (seperate yaml for running on slurm)

Eric has some great examples and helper scripts to make the above files, but I found that my de novo genome needed some customization within the helper scripts. 

## make_units.R
R script ```make_units.R``` was created to automate making the units.tsv file. Information for this file was found in the whole genome reads.

## reorder_chromosomes.sh
Script ```reorder_chromosomes.sh``` is used prior to ```make_chromosomes_and_scaffolds.R```. I found that without assigning chromosomes to the finsished do novo genome, the r script was unable to identify them, and would put all of the scaffolds and chromosomes into the scaffolds.tsv file. ```reorder_chromosomes.sh``` was created to reorder and rename the final scaffolds before making an .fai file and inputting into ```make_chromosomes_and_scaffolds.R```. 

## *.yaml (for slurms)
```crest_normal.yaml``` was designed for running mega-non-model-wgs-snakeflow on the TAMUCC crest computer system using multiple nodes at once. Memory and time settings may need to be customized differently, depending on the size of WGS files. If running this script on the HPC, refer to ```hpc_jgoldq.yaml```. Note that the HPC normal nodes were not capable of running this snake make on the lionfish whole genome reads without running out of memory.

# Updates and Modifications
7/17/24. Since last running the snake make on the HPC, I have moved the directory over to crest. When trying to rerun the Snake make, I ran into a couple of errors. Below are some of the issues I had and the solutions that I found worked.

1. Snake make version on Eric's github is outdate
   - Soln. Upgrade snakemake to ```snakemake=7.15.2``` 
2. Error message stating package "scipy" cannot be used while in the scipy path
   - Soln. set $PYTHONPATH to the correct environment (This error occurred a few times, but was fixed every time by resetting the path)
3. Running out of time after 24:00:00
   - Soln. Go into mega-non-model-wgs-snakeflow/workflow/rules/*.smk and increase the time limit for that specific rule
4. Issues with memory formatting on the slurm ```config.yaml```
   - Soln. Removed the ```#SBATCH --mem``` flag (refer to ```crest_normal.yaml```) for proper ```#SBATCH``` configuration
