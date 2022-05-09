# All codes are run in separate folder per sample and by TRIMMOMATIC version 0.39, and the output files are located in separate folders in Trimmed_reads folders. 

# For sample I19593 (testing sample)

$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19593_AGAGTAGA_L001_R1_001.fastq.gz P0174_TG_I19593_AGAGTAGA_L001_R2_001.fastq.gz Trimmed_reads/I19593/I19593_R1_paried_output.fq.gz ../../Trimmed_reads/I19593/I19593_R1_unparied_output.fq.gz ../../Trimmed_reads/I19593/I19593_R2_paired_output.fq.gz ../../Trimmed_reads/I19593/I19593_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# Testing sample then goes through getOrgenlle and found out that trimmed adapter sequence with quality control is the best option for plastome assembly, so the following code for testing sample is applied to all samples. 

# for sample I19631
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19631_TTGACTAG_L001_R1_001.fastq.gz P0174_TG_I19631_TTGACTAG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19631/I19631_R1_paried_output.fq.gz ../../Trimmed_reads/I19631/I19631_R1_unparied_output.fq.gz ../../Trimmed_reads/I19631/I19631_R2_paired_output.fq.gz ../../Trimmed_reads/I19631/I19631_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# sample I19643
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19643_CGCCTGGC_L001_R1_001.fastq.gz P0174_TG_I19643_CGCCTGGC_L001_R2_001.fastq.gz ../../Trimmed_reads/I19643/I19643_R1_paried_output.fq.gz ../../Trimmed_reads/I19643/I19643_R1_unparied_output.fq.gz ../../Trimmed_reads/I19643/I19643_R2_paired_output.fq.gz ../../Trimmed_reads/I19643/I19643_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# for sample I19656
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I19656_TTAGGATG_L001_R1_001.fastq.gz P0174_TG_I19656_TTAGGATG_L001_R2_001.fastq.gz ../../Trimmed_reads/I19656/I19656_R1_paried_output.fq.gz ../../Trimmed_reads/I19656/I19656_R1_unparied_output.fq.gz ../../Trimmed_reads/I19656/I19656_R2_paired_output.fq.gz ../../Trimmed_reads/I19656/I19656_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

# sample I26254
$ java -jar /Users/bingli/Desktop/Trail/Trimmomatic-0.39/trimmomatic-0.39.jar PE P0174_TG_I26254_CTCGTTAT_L001_R1_001.fastq.gz P0174_TG_I26254_CTCGTTAT_L001_R2_001.fastq.gz ../../Trimmed_reads/I26254/I26254_R1_paried_output.fq.gz ../../Trimmed_reads/I26254/I26254_R1_unparied_output.fq.gz ../../Trimmed_reads/I26254/I19656_R2_paired_output.fq.gz ../../Trimmed_reads/I26254/I26254_R2_unpaired_output.fq.gz ILLUMINACLIP:/Users/bingli/Desktop/Trail/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36

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

