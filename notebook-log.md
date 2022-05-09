Summary before doing analysis: 

I chose to analyze the phylogeny of Clermontia, a Hawaiian lobeliad plant group. The dataset is located in the shared research drive named givnish file. First, I duplicated the lobeliads folder to make sure I will not damage or change any raw data. The new duplicated folder is renamed as “Bing_Lobeliads_copy” in givnish lab drive. This project will work on this folder. This folder contains an excel file, named “Hawaiian lobelias samples 2021”, lists the sample ID and species name, because this dataset is large. The folder called “assemblies” contain assembled sequences but these assemblies cannot be used because the method was designed by a student and is not pubslished. The folder named “raw reads” contains all the raw reads data. For this project, I will use the "raw data" folder. 

I decided to use raw reads and assemble plastome to understand the phylogeny. First, I run FastQC for ten samples and found that these samples have not be trimmed for adaptors. Because I plan to use getOrangelle to assemble the plastome, which requires adaptor-trimmed sequences. Thus, I first used TRIMMOMATIC version 0.39 to remove adaptor sequences but didn't do anything for quality control. Because my data were collected from illumina hyseq, I used the universal adaptor set designed for Illumina Hyseq developed by TRIMMOMATIC version 0.39. 

I decided to cover the whole genus with 27 samples and one outgroup sample (I19593). 


Dara were stored in my research drive.
I first tried TRIMMOMATIC version 0.39 for the following code for single end sequencing. I didn't use any online server and I downloaded the software from github: https://github.com/usadellab/Trimmomatic

`````
% Volumes/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trail/Individual sample folder

% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar SE -phred33 P0174_TG_I19593_AGAGTAGA_L001_R1_001.fastq.gz trailR1.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-SE.fa:2:30:10
`````

This worked fine. Then, I tried the code for pair-end sequencing and created four output files -- forword_paired_output, forward_unpaired_output, reverse_paired_output and reverse_unpaired_output -- code as following: 

`````
% /in working directory/
# For sample I19593

% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19593_AGAGTAGA_L001_R1_001.fastq.gz P0174_TG_I19593_AGAGTAGA_L001_R2_001.fastq.gz I19593_R1_paried_output.fq.gz I19593_R1_unparied_output.fq.gz I19593_R2_paired_output.fq.gz I19593_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

````

I run the output files in FastQC to check if adapters are removed -- Yes, adapters are clearly removed. 

Then, I run the above Trimmomatic code for every samples. It is noted that I run Trimmomatic to all Clermontia sample I have (~40) not just the 27 samples used for this project. Those data can be useful to my future study. 

One step: I first run trimmomatic without -- LEADING:3 TRAILING:3 MINLEN:36, because getOrganelle recommends to use untrimmed, adaptor-removed data. However, I compared the output generated from trimmed and untrimmed data by using visualization tool (BANDAGE, use Geneious should also be fine), and I think using trimmed data including LEADING:3 TRAILING:3 MINLEN:36 is better. 

```` 
# Srart with sample I19631 
# I19593 is done for trial sample 

$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19631_TTGACTAG_L001_R1_001.fastq.gz P0174_TG_I19631_TTGACTAG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19631/I19631_R1_paried_output.fq.gz ../../Trimmed_reads/I19631/I19631_R1_unparied_output.fq.gz ../../Trimmed_reads/I19631/I19631_R2_paired_output.fq.gz ../../Trimmed_reads/I19631/I19631_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# sample I19643
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19643_CGCCTGGC_L001_R1_001.fastq.gz P0174_TG_I19643_CGCCTGGC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19643/I19643_R1_paried_output.fq.gz ../../Trimmed_reads/I19643/I19643_R1_unparied_output.fq.gz ../../Trimmed_reads/I19643/I19643_R2_paired_output.fq.gz ../../Trimmed_reads/I19643/I19643_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19656
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19656_TTAGGATG_L001_R1_001.fastq.gz P0174_TG_I19656_TTAGGATG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19656/I19656_R1_paried_output.fq.gz ../../Trimmed_reads/I19656/I19656_R1_unparied_output.fq.gz ../../Trimmed_reads/I19656/I19656_R2_paired_output.fq.gz ../../Trimmed_reads/I19656/I19656_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# sample I26254
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26254_CTCGTTAT_L001_R1_001.fastq.gz P0174_TG_I26254_CTCGTTAT_L001_R2_001.fastq.gz ../../Trimmed_reads/I26254/I26254_R1_paried_output.fq.gz ../../Trimmed_reads/I26254/I26254_R1_unparied_output.fq.gz ../../Trimmed_reads/I26254/I26254_R2_paired_output.fq.gz ../../Trimmed_reads/I26254/I26254_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# sample I19598
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19598_CCAAGTCA_L001_R1_001.fastq.gz P0174_TG_I19598_CCAAGTCA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19598/I19598_R1_paried_output.fq.gz ../../Trimmed_reads/I19598/I19598_R1_unparied_output.fq.gz ../../Trimmed_reads/I19598/I19598_R2_paired_output.fq.gz ../../Trimmed_reads/I19598/I19598_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# sample I19632
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19632_TTGCATAT_L001_R1_001.fastq.gz P0174_TG_I19632_TTGCATAT_L001_R2_001.fastq.gz ../../Trimmed_reads/I19632/I19632_R1_paried_output.fq.gz ../../Trimmed_reads/I19632/I19632_R1_unparied_output.fq.gz ../../Trimmed_reads/I19632/I19632_R2_paired_output.fq.gz ../../Trimmed_reads/I19632/I19632_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19644
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19644_CGTTGCGG_L001_R1_001.fastq.gz P0174_TG_I19644_CGTTGCGG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19644/I19644_R1_paried_output.fq.gz ../../Trimmed_reads/I19644/I19644_R1_unparied_output.fq.gz ../../Trimmed_reads/I19644/I19644_R2_paired_output.fq.gz ../../Trimmed_reads/I19644/I19644_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# For sample I19657
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19657_TTCGTCGG_L001_R1_001.fastq.gz P0174_TG_I19657_TTCGTCGG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19657/I19657_R1_paried_output.fq.gz ../../Trimmed_reads/I19657/I19657_R1_unparied_output.fq.gz ../../Trimmed_reads/I19657/I19657_R2_paired_output.fq.gz ../../Trimmed_reads/I19657/I19657_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26255
$ cat P0174_TG_I26255_CTTATCAG_L001_R1_001.fastq.gz P0174_TG_I26255_CTTATCAG_L001_R1_002.fastq.gz > merged_R1.fq.gz
$ cat P0174_TG_I26255_CTTATCAG_L001_R2_001.fastq.gz P0174_TG_I26255_CTTATCAG_L001_R2_002.fastq.gz > merged_R2.fq.gz
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fq.gz merged_R2.fq.gz ../../Trimmed_reads/I26255/I26255_R1_paried_output.fq.gz ../../Trimmed_reads/I26255/I26255_R1_unparied_output.fq.gz ../../Trimmed_reads/I26255/I26255_R2_paired_output.fq.gz ../../Trimmed_reads/I26255/I26255_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19599
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19599_CCATCTTA_L001_R1_001.fastq.gz P0174_TG_I19599_CCATCTTA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19599/I19599_R1_paried_output.fq.gz ../../Trimmed_reads/I19599/I19599_R1_unparied_output.fq.gz ../../Trimmed_reads/I19599/I19599_R2_paired_output.fq.gz ../../Trimmed_reads/I19599/I19599_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19633
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19633_TTGGCAGA_L001_R1_001.fastq.gz P0174_TG_I19633_TTGGCAGA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19633/I19633_R1_paried_output.fq.gz ../../Trimmed_reads/I19633/I19633_R1_unparied_output.fq.gz ../../Trimmed_reads/I19633/I19633_R2_paired_output.fq.gz ../../Trimmed_reads/I19633/I19633_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19645 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19645_CTTATCAG_L001_R1_001.fastq.gz P0174_TG_I19645_CTTATCAG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19645/I19645_R1_paried_output.fq.gz ../../Trimmed_reads/I19645/I19645_R1_unparied_output.fq.gz ../../Trimmed_reads/I19645/I19645_R2_paired_output.fq.gz ../../Trimmed_reads/I19645/I19645_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19658 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19658_TTGGAGCT_L001_R1_001.fastq.gz P0174_TG_I19658_TTGGAGCT_L001_R2_001.fastq.gz ../../Trimmed_reads/I19658/I19658_R1_paried_output.fq.gz ../../Trimmed_reads/I19658/I19658_R1_unparied_output.fq.gz ../../Trimmed_reads/I19658/I19658_R2_paired_output.fq.gz ../../Trimmed_reads/I19658/I19658_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26256 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26256_GAACCGTT_L001_R1_001.fastq.gz P0174_TG_I26256_GAACCGTT_L001_R2_001.fastq.gz ../../Trimmed_reads/I26256/I26256_R1_paried_output.fq.gz ../../Trimmed_reads/I26256/I26256_R1_unparied_output.fq.gz ../../Trimmed_reads/I26256/I26256_R2_paired_output.fq.gz ../../Trimmed_reads/I26256/I26256_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19600 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19600_CCGAACGC_L001_R1_001.fastq.gz P0174_TG_I19600_CCGAACGC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19600/I19600_R1_paried_output.fq.gz ../../Trimmed_reads/I19600/I19600_R1_unparied_output.fq.gz ../../Trimmed_reads/I19600/I19600_R2_paired_output.fq.gz ../../Trimmed_reads/I19600/I19600_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19634
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19634_AACGACTA_L001_R1_001.fastq.gz P0174_TG_I19634_AACGACTA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19634/I19634_R1_paried_output.fq.gz ../../Trimmed_reads/I19634/I19634_R1_unparied_output.fq.gz ../../Trimmed_reads/I19634/I19634_R2_paired_output.fq.gz ../../Trimmed_reads/I19634/I19634_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19646 
$ cat P0174_TG_I19646_GAACCGTT_L001_R1_001.fastq.gz P0174_TG_I19646_GAACCGTT_L001_R1_002.fastq.gz > merged_R1.fq.gz 
$ cat P0174_TG_I19646_GAACCGTT_L001_R2_001.fastq.gz P0174_TG_I19646_GAACCGTT_L001_R2_002.fastq.gz > merged_R2.fq.gz 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fq.gz merged_R2.fq.gz ../../Trimmed_reads/I19646/I19646_R1_paried_output.fq.gz ../../Trimmed_reads/I19646/I19646_R1_unparied_output.fq.gz ../../Trimmed_reads/I19646/I19646_R2_paired_output.fq.gz ../../Trimmed_reads/I19646/I19646_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19659
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19659_TTGGCTCC_L001_R1_001.fastq.gz P0174_TG_I19659_TTGGCTCC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19659/I19659_R1_paried_output.fq.gz ../../Trimmed_reads/I19659/I19659_R1_unparied_output.fq.gz ../../Trimmed_reads/I19659/I19659_R2_paired_output.fq.gz ../../Trimmed_reads/I19659/I19659_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26257 
$ cat P0174_TG_I26257_GAACGTAT_L001_R1_001.fastq.gz P0174_TG_I26257_GAACGTAT_L001_R1_002.fastq.gz > merged_R1.fq.gz 
$ cat P0174_TG_I26257_GAACGTAT_L001_R2_001.fastq.gz P0174_TG_I26257_GAACGTAT_L001_R2_002.fastq.gz > merged_R2.fq.gz 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fq.gz merged_R2.fq.gz ../../Trimmed_reads/I26257/I26257_R1_paried_output.fq.gz ../../Trimmed_reads/I26257/I26257_R1_unparied_output.fq.gz ../../Trimmed_reads/I26257/I26257_R2_paired_output.fq.gz ../../Trimmed_reads/I26257/I26257_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19601
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19601_CCGTCTGC_L001_R1_001.fastq.gz P0174_TG_I19601_CCGTCTGC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19601/I19601_R1_paried_output.fq.gz ../../Trimmed_reads/I19601/I19601_R1_unparied_output.fq.gz ../../Trimmed_reads/I19601/I19601_R2_paired_output.fq.gz ../../Trimmed_reads/I19601/I19601_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19635 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19635_AACTGATA_L001_R1_001.fastq.gz P0174_TG_I19635_AACTGATA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19635/I19635_R1_paried_output.fq.gz ../../Trimmed_reads/I19635/I19635_R1_unparied_output.fq.gz ../../Trimmed_reads/I19635/I19635_R2_paired_output.fq.gz ../../Trimmed_reads/I19635/I19635_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19647
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19647_GACCTTAA_L001_R1_001.fastq.gz P0174_TG_I19647_GACCTTAA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19647/I19647_R1_paried_output.fq.gz ../../Trimmed_reads/I19647/I19647_R1_unparied_output.fq.gz ../../Trimmed_reads/I19647/I19647_R2_paired_output.fq.gz ../../Trimmed_reads/I19647/I19647_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26246
$ cat P0174_TG_I26246_CCATAGTC_L001_R1_001.fastq.gz P0174_TG_I26246_CCATAGTC_L001_R1_002.fastq.gz > merged_R1.fq.gz
$ cat P0174_TG_I26246_CCATAGTC_L001_R2_001.fastq.gz P0174_TG_I26246_CCATAGTC_L001_R2_002.fastq.gz > merged_R2.fq.gz
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fq.gz merged_R2.fq.gz ../../Trimmed_reads/I26246/I26246_R1_paried_output.fq.gz ../../Trimmed_reads/I26246/I26246_R1_unparied_output.fq.gz ../../Trimmed_reads/I26246/I26246_R2_paired_output.fq.gz ../../Trimmed_reads/I26246/I26246_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26277
# samples with two file needs to be "cat" first 
$ cat P0174_TG_I26277_TTCATACG_L001_R1_001.fastq.gz P0174_TG_I26277_TTCATACG_L001_R1_002.fastq.gz > merged_R1.fq.gz 
$ cat P0174_TG_I26277_TTCATACG_L001_R2_001.fastq.gz P0174_TG_I26277_TTCATACG_L001_R2_002.fastq.gz > merged_R2.fq.gz 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fq.gz merged_R2.fq.gz ../../Trimmed_reads/I26277/I26277_R1_paried_output.fq.gz ../../Trimmed_reads/I26277/I26277_R1_unparied_output.fq.gz ../../Trimmed_reads/I26277/I26277_R2_paired_output.fq.gz ../../Trimmed_reads/I26277/I26277_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19624
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19624_TGACGCGG_L001_R1_001.fastq.gz P0174_TG_I19624_TGACGCGG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19624/I19624_R1_paried_output.fq.gz ../../Trimmed_reads/I19624/I19624_R1_unparied_output.fq.gz ../../Trimmed_reads/I19624/I19624_R2_paired_output.fq.gz ../../Trimmed_reads/I19624/I19624_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19636
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19636_AATAACTG_L001_R1_001.fastq.gz P0174_TG_I19636_AATAACTG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19636/I19636_R1_paried_output.fq.gz ../../Trimmed_reads/I19636/I19636_R1_unparied_output.fq.gz ../../Trimmed_reads/I19636/I19636_R2_paired_output.fq.gz ../../Trimmed_reads/I19636/I19636_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19648
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19648_GCATGGCG_L001_R1_001.fastq.gz P0174_TG_I19648_GCATGGCG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19648/I19648_R1_paried_output.fq.gz ../../Trimmed_reads/I19648/I19648_R1_unparied_output.fq.gz ../../Trimmed_reads/I19648/I19648_R2_paired_output.fq.gz ../../Trimmed_reads/I19648/I19648_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26247
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26247_CCATGCGC_L001_R1_001.fastq.gz P0174_TG_I26247_CCATGCGC_L001_R2_001.fastq.gz ../../Trimmed_reads/I26247/I26247_R1_paried_output.fq.gz ../../Trimmed_reads/I26247/I26247_R1_unparied_output.fq.gz ../../Trimmed_reads/I26247/I26247_R2_paired_output.fq.gz ../../Trimmed_reads/I26247/I26247_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26280
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26280_TTGGAGCT_L001_R1_001.fastq.gz P0174_TG_I26280_TTGGAGCT_L001_R2_001.fastq.gz ../../Trimmed_reads/I26280/I26280_R1_paried_output.fq.gz ../../Trimmed_reads/I26280/I26280_R1_unparied_output.fq.gz ../../Trimmed_reads/I26280/I26280_R2_paired_output.fq.gz ../../Trimmed_reads/I26280/I26280_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19625 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19625_TGGAGTAC_L001_R1_001.fastq.gz P0174_TG_I19625_TGGAGTAC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19625/I19625_R1_paried_output.fq.gz ../../Trimmed_reads/I19625/I19625_R1_unparied_output.fq.gz ../../Trimmed_reads/I19625/I19625_R2_paired_output.fq.gz ../../Trimmed_reads/I19625/I19625_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19637 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19637_ACTGCTCT_L001_R1_001.fastq.gz P0174_TG_I19637_ACTGCTCT_L001_R2_001.fastq.gz ../../Trimmed_reads/I19637/I19637_R1_paried_output.fq.gz ../../Trimmed_reads/I19637/I19637_R1_unparied_output.fq.gz ../../Trimmed_reads/I19637/I19637_R2_paired_output.fq.gz ../../Trimmed_reads/I19637/I19637_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19649
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19649_GCTGGTCA_L001_R1_001.fastq.gz P0174_TG_I19649_GCTGGTCA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19649/I19649_R1_paried_output.fq.gz ../../Trimmed_reads/I19649/I19649_R1_unparied_output.fq.gz ../../Trimmed_reads/I19649/I19649_R2_paired_output.fq.gz ../../Trimmed_reads/I19649/I19649_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36


# for sample I26248 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26248_CCGGCGAC_L001_R1_001.fastq.gz P0174_TG_I26248_CCGGCGAC_L001_R2_001.fastq.gz ../../Trimmed_reads/I26248/I26248_R1_paried_output.fq.gz ../../Trimmed_reads/I26248/I26248_R1_unparied_output.fq.gz ../../Trimmed_reads/I26248/I26248_R2_paired_output.fq.gz ../../Trimmed_reads/I26248/I26248_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19626
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19626_TGGTATGA_L001_R1_001.fastq.gz P0174_TG_I19626_TGGTATGA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19626/I19626_R1_paried_output.fq.gz ../../Trimmed_reads/I19626/I19626_R1_unparied_output.fq.gz ../../Trimmed_reads/I19626/I19626_R2_paired_output.fq.gz ../../Trimmed_reads/I19626/I19626_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19638 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19638_AGCTAGAG_L001_R1_001.fastq.gz P0174_TG_I19638_AGCTAGAG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19638/I19638_R1_paried_output.fq.gz ../../Trimmed_reads/I19638/I19638_R1_unparied_output.fq.gz ../../Trimmed_reads/I19638/I19638_R2_paired_output.fq.gz ../../Trimmed_reads/I19638/I19638_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19650
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19650_GGCTTGAA_L001_R1_001.fastq.gz P0174_TG_I19650_GGCTTGAA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19650/I19650_R1_paried_output.fq.gz ../../Trimmed_reads/I19650/I19650_R1_unparied_output.fq.gz ../../Trimmed_reads/I19650/I19650_R2_paired_output.fq.gz ../../Trimmed_reads/I19650/I19650_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26249
# Merge two files for R1 and R2 by "cat" 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fastq.gz merged_R2.fastq.gz ../../Trimmed_reads/I26249/I26249_R1_paried_output.fq.gz ../../Trimmed_reads/I26249/I26249_R1_unparied_output.fq.gz ../../Trimmed_reads/I26249/I26249_R2_paired_output.fq.gz ../../Trimmed_reads/I26249/I26249_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19627 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19627_TGGTTGAC_L001_R1_001.fastq.gz P0174_TG_I19627_TGGTTGAC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19627/I19627_R1_paried_output.fq.gz ../../Trimmed_reads/I19627/I19627_R1_unparied_output.fq.gz ../../Trimmed_reads/I19627/I19627_R2_paired_output.fq.gz ../../Trimmed_reads/I19627/I19627_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19639 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19639_ATCGGTTC_L001_R1_001.fastq.gz P0174_TG_I19639_ATCGGTTC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19639/I19639_R1_paried_output.fq.gz ../../Trimmed_reads/I19639/I19639_R1_unparied_output.fq.gz ../../Trimmed_reads/I19639/I19639_R2_paired_output.fq.gz ../../Trimmed_reads/I19639/I19639_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19651
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19651_GGTTAGTC_L001_R1_001.fastq.gz P0174_TG_I19651_GGTTAGTC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19651/I19651_R1_paried_output.fq.gz ../../Trimmed_reads/I19651/I19651_R1_unparied_output.fq.gz ../../Trimmed_reads/I19651/I19651_R2_paired_output.fq.gz ../../Trimmed_reads/I19651/I19651_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26250 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26250_CGAAGCTG_L001_R1_001.fastq.gz P0174_TG_I26250_CGAAGCTG_L001_R2_001.fastq.gz ../../Trimmed_reads/I26250/I26250_R1_paried_output.fq.gz ../../Trimmed_reads/I26250/I26250_R1_unparied_output.fq.gz ../../Trimmed_reads/I26250/I26250_R2_paired_output.fq.gz ../../Trimmed_reads/I26250/I26250_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19628 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19628_TTACTTCT_L001_R1_001.fastq.gz P0174_TG_I19628_TTACTTCT_L001_R2_001.fastq.gz ../../Trimmed_reads/I19628/I19628_R1_paried_output.fq.gz ../../Trimmed_reads/I19628/I19628_R1_unparied_output.fq.gz ../../Trimmed_reads/I19628/I19628_R2_paired_output.fq.gz ../../Trimmed_reads/I19628/I19628_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19640 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19640_CAGTCAGA_L001_R1_001.fastq.gz P0174_TG_I19640_CAGTCAGA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19640/I19640_R1_paried_output.fq.gz ../../Trimmed_reads/I19640/I19640_R1_unparied_output.fq.gz ../../Trimmed_reads/I19640/I19640_R2_paired_output.fq.gz ../../Trimmed_reads/I19640/I19640_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19652 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19652_GTTCTACG_L001_R1_001.fastq.gz P0174_TG_I19652_GTTCTACG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19652/I19652_R1_paried_output.fq.gz ../../Trimmed_reads/I19652/I19652_R1_unparied_output.fq.gz ../../Trimmed_reads/I19652/I19652_R2_paired_output.fq.gz ../../Trimmed_reads/I19652/I19652_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26251
$ cat P0174_TG_I26251_CGCCTGGC_L001_R1_001.fastq.gz P0174_TG_I26251_CGCCTGGC_L001_R1_002.fastq.gz > merged_R1.fastq.gz
$ cat P0174_TG_I26251_CGCCTGGC_L001_R2_001.fastq.gz P0174_TG_I26251_CGCCTGGC_L001_R2_002.fastq.gz > merged_R2.fastq.gz 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE merged_R1.fastq.gz merged_R2.fastq.gz ../../Trimmed_reads/I26251/I26251_R1_paried_output.fq.gz ../../Trimmed_reads/I26251/I26251_R1_unparied_output.fq.gz ../../Trimmed_reads/I26251/I26251_R2_paired_output.fq.gz ../../Trimmed_reads/I26251/I26251_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19629
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19629_TTATAACT_L001_R1_001.fastq.gz P0174_TG_I19629_TTATAACT_L001_R2_001.fastq.gz ../../Trimmed_reads/I19629/I19629_R1_paried_output.fq.gz ../../Trimmed_reads/I19629/I19629_R1_unparied_output.fq.gz ../../Trimmed_reads/I19629/I19629_R2_paired_output.fq.gz ../../Trimmed_reads/I19629/I19629_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19653
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19653_TCCGTATA_L001_R1_001.fastq.gz P0174_TG_I19653_TCCGTATA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19653/I19653_R1_paried_output.fq.gz ../../Trimmed_reads/I19653/I19653_R1_unparied_output.fq.gz ../../Trimmed_reads/I19653/I19653_R2_paired_output.fq.gz ../../Trimmed_reads/I19653/I19653_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19641
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19641_CCATGCGC_L001_R1_001.fastq.gz P0174_TG_I19641_CCATGCGC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19641/I19641_R1_paried_output.fq.gz ../../Trimmed_reads/I19641/I19641_R1_unparied_output.fq.gz ../../Trimmed_reads/I19641/I19641_R2_paired_output.fq.gz ../../Trimmed_reads/I19641/I19641_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26252 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26252_CGTCCAGA_L001_R1_001.fastq.gz P0174_TG_I26252_CGTCCAGA_L001_R2_001.fastq.gz ../../Trimmed_reads/I26252/I26252_R1_paried_output.fq.gz ../../Trimmed_reads/I26252/I26252_R1_unparied_output.fq.gz ../../Trimmed_reads/I26252/I26252_R2_paired_output.fq.gz ../../Trimmed_reads/I26252/I26252_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19630
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19630_TTCGATGA_L001_R1_001.fastq.gz P0174_TG_I19630_TTCGATGA_L001_R2_001.fastq.gz ../../Trimmed_reads/I19630/I19630_R1_paried_output.fq.gz ../../Trimmed_reads/I19630/I19630_R1_unparied_output.fq.gz ../../Trimmed_reads/I19630/I19630_R2_paired_output.fq.gz ../../Trimmed_reads/I19630/I19630_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19642
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19642_CCTATCTC_L001_R1_001.fastq.gz P0174_TG_I19642_CCTATCTC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19642/I19642_R1_paried_output.fq.gz ../../Trimmed_reads/I19642/I19642_R1_unparied_output.fq.gz ../../Trimmed_reads/I19642/I19642_R2_paired_output.fq.gz ../../Trimmed_reads/I19642/I19642_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19655
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19655_TGGTCCTG_L001_R1_001.fastq.gz P0174_TG_I19655_TGGTCCTG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19655/I19655_R1_paried_output.fq.gz ../../Trimmed_reads/I19655/I19655_R1_unparied_output.fq.gz ../../Trimmed_reads/I19655/I19655_R2_paired_output.fq.gz ../../Trimmed_reads/I19655/I19655_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I26253
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26253_CGTTGCGG_L001_R1_001.fastq.gz P0174_TG_I26253_CGTTGCGG_L001_R2_001.fastq.gz ../../Trimmed_reads/I26253/I26253_R1_paried_output.fq.gz ../../Trimmed_reads/I26253/I26253_R1_unparied_output.fq.gz ../../Trimmed_reads/I26253/I26253_R2_paired_output.fq.gz ../../Trimmed_reads/I26253/I26253_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19654 
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19654_TGCCTGCG_L001_R1_001.fastq.gz P0174_TG_I19654_TGCCTGCG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19654/I19654_R1_paried_output.fq.gz ../../Trimmed_reads/I19654/I19654_R1_unparied_output.fq.gz ../../Trimmed_reads/I19654/I19654_R2_paired_output.fq.gz ../../Trimmed_reads/I19654/I19654_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36
````` 



Then, I downloaded GetOrgenlle to Botany server by the following code. GetOrganelle needs to use miniconda, so I downloaded miniconda to both Botany server provided by Steve and CHTC. The installation of miniconda in botany server is shown as below and that in CHTC is referred to the website of CHTC: https://chtc.cs.wisc.edu/uw-research-computing/conda-installation. 


``````
$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
$ bash bash Miniconda3-latest-Linux-x86_64.sh # I changed the file name here to match the file name I downloaded, and these two codes set up for miniconda environment 

$ conda install -c bioconda getorganelle # download getOrgenlle to the online server 
$ get_organelle_config.py --add embplant_pt,embplant_mt # download reference genome 

````

Then, I tested whether getOrgenlle can work for my samples. All analysis of getOrganelle were conducted in Botany server. 

`````
# move some files from my local computer to the server 

$ scp /Users/bingli/Desktop/*.fq.gz bli283@pink.botany.wisc.edu:/home/bli283/data/I19593

# then, direct into the directory with raw data and test getOrgenlle using my own data and the reference plastome provided by getOrgenlle with the code: 

$ get_organelle_from_reads.py -1 I19593_R1_paried_output.fq.gz -2 I19593_R2_paired_output.fq.gz -o I19593_plast_output -R 15 -k 21,45,65,85,105 -F embplant_pt

# The code works well! 
# then, I added a clermontia complete genome as a seed database. The genome is downloaded from genebank NC_035355. Code with seed database as following: 

$ get_organelle_from_reads.py -s ../NC_035355.1.fasta -1 I19593_R1_paried_output.fq.gz -2 I19593_R2_paired_output.fq.gz -o I19593_plast_output -R 15 -k 21,45,65,85,105 -F embplant_pt

# Noted above, all setting are default. I worked in the directory with rawdata, and seed database genome is stored in the previous directory. 

```````
Then, I put the output file into Bandage to check quality. There are many regions covered by uneven coverage and many repeated inserts. To solve this problem, I tried to reduce w limit, which does not work. Then, I tried to increase k-mer length as suggested by getOrgenlle desiger, which really worked. Then, I removed the seed database, which does not improve and even reduce the performance. Then, I tried to re-do trimmomatic and trim the dataset with the the default setting provided by the trimmomatic designer, which really worked. The final assembly generated by getOrgenlle is not a circula complete plastome, but it looks fine in Bandage with simple structure gaps and even coverage. I consulted with my Nisa and Lauren, and they mentioned that it is difficult to generate a complete circular genome and the resulted assembly should be good for downstreaming analysis. 

The code for the better performance assembly below: 

``````

$ within the folder with data 
$ get_organelle_from_reads.py -s ../NC_035355.1.fasta -1 I19593_R1_paried_output.fq.gz -2 I19593_R2_paired_output.fq.gz -o I19593_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

```````

Then, I used getOrganelle for the rest of the samples. 


``````
get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19593/I19593_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19593/I19593_R2_paired_output.fq.gz -o I19593_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt 

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19631/I19631_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19631/I19631_R2_paired_output.fq.gz -o I19631_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26255/I26255_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26255/I26255_R2_paired_output.fq.gz -o I26255_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19599/I19599_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19599/I19599_R2_paired_output.fq.gz -o I19599_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19601/I19601_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19601/I19601_R2_paired_output.fq.gz -o I19601_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19624/I19624_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19624/I19624_R2_paired_output.fq.gz -o I19624_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19625/I19625_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19625/I19625_R2_paired_output.fq.gz -o I19625_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19626/I19626_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19626/I19626_R2_paired_output.fq.gz -o I19626_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19628/I19628_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19628/I19628_R2_paired_output.fq.gz -o I19628_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19629/I19629_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19629/I19629_R2_paired_output.fq.gz -o I19629_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19630/I19630_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19630/I19630_R2_paired_output.fq.gz -o I19630_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19634/I19634_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19634/I19634_R2_paired_output.fq.gz -o I19634_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19638/I19638_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19638/I19638_R2_paired_output.fq.gz -o I19638_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19639/I19639_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19639/I19639_R2_paired_output.fq.gz -o I19639_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19639/I19639_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19639/I19639_R2_paired_output.fq.gz -o I19639_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19641/I19641_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19641/I19641_R2_paired_output.fq.gz -o I19641_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19643/I19643_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19643/I19643_R2_paired_output.fq.gz -o I19643_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19646/I19646_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19646/I19646_R2_paired_output.fq.gz -o I19646_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19647/I19647_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19647/I19647_R2_paired_output.fq.gz -o I19647_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19656/I19656_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19656/I19656_R2_paired_output.fq.gz -o I19656_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19658/I19658_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19658/I19658_R2_paired_output.fq.gz -o I19658_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19659/I19659_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I19659/I19659_R2_paired_output.fq.gz -o I19659_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26247/I26247_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26247/I26247_R2_paired_output.fq.gz -o I26247_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26252/I26252_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26252/I26252_R2_paired_output.fq.gz -o I26252_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26253/I26253_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26253/I26253_R2_paired_output.fq.gz -o I26253_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

get_organelle_from_reads.py -1 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26254/I26254_R1_paried_output.fq.gz -2 /mnt/researchdrive/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trimmed_reads/I26254/I26254_R2_paired_output.fq.gz -o I26254_plast_output -R 15 -k 21,45,65,85,105,127 -F embplant_pt

```````` 
Those are all samples assembled by getOrgenalle. Then, I extract the output files "extended_K127.assembly_graph.fastg" and map it to reference by geneious. The reference genome is NC_035355 in geneBank. I manually trimmed the end and beignning of each contigs. I also deleted short contigs with larger dissimilarity of the reference genome. 

Then, I used MAFFT with argumentS --auto and --nwildcard. The argument --auto will automatically calulcate the best algorithum. 

``````
# In my server with assembly mapped to the reference 
$ cat consensus_assembly/*.fasta > total_consensus
$ mafft --auto --nwildcard total_consensus > mafft_output_untrimmed 

# I used this untrimmed mafft file for a ML tree using IQtree 
# I also used model finder built in IQ-tree to find the best model 
$ iqtree -s ../mafft_output_untrimmed -m MF # This finds the best model without doing the tree 
# The best model found by modelfinder is TVM+F+R2 
$ iqtree -s mafft_output_untrimmed -m TVM+F+R2 -alrt 1000 -bb 1000
# I included 1000 replicate SH-alrt and 1000 replicate of ultrafast bootstrap 
```` 
Then, I downloaded the mafft_output_untrimmed and trimmed with Geneious. I trimmed any sites with 30 np longer and have low identity to generate file named mafft_output_trimmed.fasta. Both trimmed and untrimmed datasets were used for downstream analysis. 

````` 
$ iqtree -s mafft_output_trimmed.fasta -m MF # Use the trimmed file to test the best model. The best model is still TVM+F+R2 

$ iqtree -s mafft_output_trimmed.fasta -m TVM+F+R2 -alrt 1000 -bb 1000 

````` 

Then, I used Mrbayes (downloaded into the botany server) to generate a bayesian tree. 
I downloaded Mrbayes by using this link https://github.com/NBISweden/MrBayes/blob/develop/INSTALL around line 70~ 
I first used modelfinder built in iqtree with argument -m TEST 

``` 
-iqtree -s untrimmed_fastat -m TEST 

# This can resemble jModelTest which is recommended by the developers of MrBayes. Also, the top and second best model generated by the argument -m MF (regular modelfinder) are all TVM, and TVM is not built in Mrbayes. The best model given by this command is TVM and thus I chose the second best model, GTR+F+I+G4. 

# To use Mrbayes in online server, I need to export PATH everything by:



````
$ export PATH=$PATH:/home/bli283/MrBayes/src
`````
Before using MrBayes, because TVM is not built in MrBayes. 
I used ModleFinder and use --m TEST to resemble JModelTest 

``````
$ iqtree -s trimmed_output.fasta -m TEST
$ iqtree -s untrimmed_output.fasta -m TEST 

`````

# This is the mbblock.txt 
$ begin mrbayes;
 set autoclose=yes;
 set quitonerror=no;
 prset brlenspr=clock:uniform;
 prset shapepr=exp(1.0);
 prset tratiopr=beta(1.0,1.0);
 prset statefreqpr=dirichlet(1.0,1.0,1.0,1.0);
 lset nst=6 rates=invgamma ngammacat=4;
 mcmcp ngen=5000000 samplefreq=5000 printfreq=5000 nruns=2 nchains=4 savebrlens=yes;
 outgroup I19593_assembly_with_ref_consensus_sequence_2;
 mcmc;
 sumt;
end;

# The input.nex file was output from Geneious with "interwind" option checked to make sure the sequence are short enough for MrBayes analysis. 


$ cat trimmed.nex mbblock > trimmed_data.nex
$ cat untrimmed.nex.mbclock > untrimmed_data.nex 
$ mb trimmed_data.nex
$ mb untrimmed_data.nex 

``````
Then, the output tree file was visually editted in FigTree. Iq-tree works fine with changing tip names through this R code below： 
`````
# BOT 536 
library(ggplot2)
install.packages("ggtree")
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.15")


source("https://bioconductor.org/biocLite.R")
setwd("~/Desktop/Bot563_Project")
data <- read.csv("~/Desktop/Bot563_Project/dataframe.csv") # dataframe inported manually 
tree <- read.nexus("untrimmed_output..tre")

# Change tree tip 
tree$tip.label <- data[[2]][match(tree$tip.label,data[[1]])]
tree$tip.label <- sub("\\_","",tree$tip.label)
plot(tree)
write.tree(tree, "tree_file_untrimmed")

```````
However, when I used this code to change node tip for MrBayes trees, it will loss the values of probablity. Thus, I manually changed the node tip. 

Then, I used FigTree to make the trees look beautiful. 




