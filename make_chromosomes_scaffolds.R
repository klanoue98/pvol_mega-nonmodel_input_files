# Prefix that the true chromosomes start with; all others are assumed to be "scaffolds" and will be merged. This prefix matching approach is used to define "chromosomes" and "scaffolds", but you could use any other means of partitioning them. All that matters is that you have mutually exclusive sets in the variables chromos and scaffs down below.
CP <- "chromosome"

#Read in .fai
fai <- read.table("wtdbg2_pilon_v2.fasta.fai", head=F, sep="\t")
colnames(fai) <- c("chrom", "len", "x", "y", "z")
fai <- fai[,c("chrom", "len")]

#Sort fai by chromosomes (chromos), and scaffolds (scaffs)
chromos <- fai %>%
  filter(str_detect(chrom, str_c("^", CP)))

scaffs <- fai %>%
  filter(!str_detect(chrom, str_c("^", CP)))

# now, write chromosomes.tsv. The name of the chromosomes in this file needs to match what they are called in the genome.fasta. 
chromos %>%
  mutate(id = sprintf("chromo%03d", 1:n()), .before = chrom) %>%
  select(chrom,len) %>%
  write_tsv("chromosomes.tsv")

# now, figure out the mean length of the chromosomes.
# We will set our scaff groups to cumulatively be 40% of that.
mean_cl <- chromos %>% pull(len) %>% mean()

bin_length <- as.integer(mean_cl * 0.40)

scaffs %>%
  mutate(
    cumul = cumsum(len),
    part = as.integer(cumul / bin_length) + 1L
  ) %>%
  mutate(
    id = sprintf("scaff_group%03d", part),
    .before = chrom
  ) %>%
  select(-part) %>%
  write_tsv("scaffold_groups.tsv")
