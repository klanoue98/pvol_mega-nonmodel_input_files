# .fai File Work Around

module load samtools/gcc7/1.9

# Transform the finished, polished genome into .fai (index file)
samtools faidx wtdbg2_pilon.fasta

#Sort the fai by largest size scaffolds.The number assigned can be changed to whatever you want. I used 24 as my number because I expect 24 chromosomes in a complete lionfish genome. Put the names of the top 24 largest scaffolds into two separate folders, then combine. The '<24' can be adjusted to any number to indicate 'chromosomes'
sort -k2,2nr wtdbg2_pilon.fasta.fai | cut -f1 > scaffold_names.txt
sort -k2,2nr wtdbg2_pilon.fasta.fai | awk 'NR < 24 {gsub("scaffold", "chromosome")}{print $0}' | cut -f1 > scaffold_renameed.txt

#Recombine sorting scaffolds into file with new sorted order
paste scaffold_names.txt scaffold_renameed.txt > scaffold_index.txt
sed -i 's/scaffold/>scaffold/g' scaffold_index.txt
sed -i 's/chromosome/>chromosome/g' scaffold_index.txt

#Create new .fasta file from original genome and new sorting
awk 'FNR==NR{A[$1]=$2; next} $1 in A{$1=A[$1]}1' scaffold_index.txt wtdbg2_pilon.fasta > wtdbg2_pilon_v2.fasta
