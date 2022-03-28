I chose to analyze the phylogeny of Clermontia, a Hawaiian lobeliad plant group. The dataset is located in the shared research drive named givnish file. First, I duplicated the lobeliads folder to make sure I will not damage or change any raw data. The new duplicated folder is renamed as “Bing_Lobeliads_copy”. This project will work on this folder. This folder contains a excel file, named “Hawaiian lobelias samples 2021”, lists the sample ID and species name, because this dataset is large. The folder called “assemblies” contain assembled sequences, and the folder named “raw reads” contains all the raw reads data. 

I decided to use RawReads and assemble plastome to understand the phylogeny. First, I run FastQC for ten samples and found that these samples have not be trimmed for adaptors. Because I plan to use getOrangelle to assemble the plastome, which requires adaptor-trimmed sequences without quality control. Thus, I first used TRIMMOMATIC to remove adaptor sequences but didn't do anything for quality control. Because my data were collected from illumina hyseq, I used the universal adaptor set designed for Illumina Hyseq developed by TRIMMOMATIC version 0.39. 

Dara were stored in my research drive.
I first tried TRIMMOMATIC for the following code for single end sequencing: 

`````
% Volumes/givnish/Bing_Lobeliads_copy/RawReads/Clermontia/Trail/Individual sample folder

% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar SE -phred33 P0174_TG_I19593_AGAGTAGA_L001_R1_001.fastq.gz trailR1.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-SE.fa:2:30:10
`````

This worked fine. Then, I tried the code for pair-end sequencing and created four output files -- forword_paired_output, forward_unpaired_output, reverse_paired_output and reverse_unpaired_output -- code as following: 

`````
% /in working directory/
For sample I19593

% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19593_AGAGTAGA_L001_R1_001.fastq.gz P0174_TG_I19593_AGAGTAGA_L001_R2_001.fastq.gz I19593_R1_paried_output.fq.gz I19593_R1_unparied_output.fq.gz I19593_R2_paired_output.fq.gz I19593_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

````

I run the output files in FasQC to check if adapters are removed -- Yes, adapters are clearly removed. 

Then, I run the above trimmomatic code for every samples. 

````
# for sample 19642
 % java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19642_CCTATCTC_L001_R1_001.fastq.gz P0174_TG_I19642_CCTATCTC_L001_R2_001.fastq.gz I19642_R1_paried_output.fq.gz I19642_R1_unparied_output.fq.gz I19642_R2_paired_output.fq.gz I19642_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

# For sample 26254
 % java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26254_CTCGTTAT_L001_R1_001.fastq.gz P0174_TG_I26254_CTCGTTAT_L001_R2_001.fastq.gz I26254_R1_paried_output.fq.gz I26254_R1_unparied_output.fq.gz I26254_R2_paired_output.fq.gz I26254_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

# for sample 19629
% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19629_TTATAACT_L001_R1_001.fastq.gz P0174_TG_I19629_TTATAACT_L001_R2_001.fastq.gz I19629_R1_paried_output.fq.gz I19629_R1_unparied_output.fq.gz I19629_R2_paired_output.fq.gz I19629_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

# for sample 19652
% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19652_GTTCTACG_L001_R1_001.fastq.gz P0174_TG_I19652_GTTCTACG_L001_R2_001.fastq.gz I19652_R1_paried_output.fq.gz I19652_R1_unparied_output.fq.gz I19652_R2_paired_output.fq.gz I19652_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

# for sample 19630
% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19630_TTCGATGA_L001_R1_001.fastq.gz P0174_TG_I19630_TTCGATGA_L001_R2_001.fastq.gz I19630_R1_paried_output.fq.gz I19630_R1_unparied_output.fq.gz I19630_R2_paired_output.fq.gz I19630_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

# for sample I19653
% java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19653_TCCGTATA_L001_R1_001.fastq.gz P0174_TG_I19653_TCCGTATA_L001_R2_001.fastq.gz I19653_R1_paried_output.fq.gz I19653_R1_unparied_output.fq.gz I19653_R2_paired_output.fq.gz I19653_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True

````

Then, I downloaded GetOrgenlle to Botany server by the following code: 

``````

$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
$ bash bash Miniconda3-latest-Linux-x86_64.sh # I changed the file name here to match the file name I downloaded, and these two codes set up for miniconda environment 

$ conda install -c bioconda getorganelle # download getOrgenlle to the online server 
$ get_organelle_config.py --add embplant_pt,embplant_mt # download reference genome 












 

 



