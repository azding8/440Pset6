# 20.440 PSET6

## Overview
At a high level, what does your repo contain / do?

This repo contains the necessary R script and instructions to reproduce a mitochondrial content violin plot for 8 endometrium scRNA-seq samples which we aggregate together.

Include citations for any scripts your team did not write that are included directly in the repo and any non-standard methods that your analysis is based on.

Seurat v5 Citation
@Article{,
  author = {Yuhan Hao and Tim Stuart and Madeline H Kowalski and Saket Choudhary and Paul Hoffman and Austin Hartman and Avi Srivastava and Gesmira Molla and Shaista Madad and Carlos Fernandez-Granda and Rahul Satija},
  title = {Dictionary learning for integrative, multimodal and scalable single-cell analysis},
  journal = {Nature Biotechnology},
  year = {2023},
  doi = {10.1038/s41587-023-01767-y},
  url = {https://doi.org/10.1038/s41587-023-01767-y},
}

## Data
At a high level, how was the data generated?

Short Answer: scRNA-seq of endometrial samples were generated using Illumina 10xv3 Chemistry on a NovaSeq S4 and posted to the GEO database for public use.

Longer Answer: Single cells were captured and barcoded using the 10X Chromium platform. ScRNA-seq libraries were prepared following the Chromium Single Cell 3' Reagent Kits User Guide (v2/v3). Gel Bead-In Emulsions were generated using single cell preparations. Libraries were quantified using Agilent Bioanalyzer High Sensitivity DNA chips and pooled together before sequencing on a NovaSeq S4.

If it’s too large to upload to your GitHub, where can it be accessed? Include citations, if any.

GEO Asscession URL:
https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE213216
GEO Samples used:
GSM6574518
GSM6574519
GSM6574520
GSM6574521
GSM6574528
GSM6574529
GSM6574530
GSM6574531

Also see references section for citations.

The data is also described in the meta data of the GSM page and in the csv located in the Data folder of this repository.The data being used are single-cell RNA sequencing samples from [1], studying the single-cell transcriptome in endometriosis. We are currently focusing on 8 samples split between 2 individuals (each individual with 2 endometrial samples and 2 control samples).

Data Characteristics in Short:
-Tissue samples from female donors
-2 patients
-7 unique anatomical locations
-3 major classes (endometriosis, no endometriosis, eutopic endometrium)

## Folder structure
At a high level, what is in each folder and subfolder?
Cluster scripts folder: contains shell scripts used to download fastqs from Sequence Read Archive (SRA) and process them into spliced/unspliced count matrices. These files are relevant to our final project, but are not used to generate a figure for Pset 6.
R
Data folder: contains a csv file with the GEO acession ids for the 8 samples used in the violin plot for Pset 6.
Figures folder: contains a png of the mitochondrial violin plot figure for Pset 6.
R_scripts folder contains the R script used to generate the mitochondrial violin plot figure for Pset 6.

## Installation
How do I run your code?
1. Download the required data files from the GEO database and unzip them
2. Download the R script file (Endo_Analysis.R)
3. Install R studio or some other means of running R code
4. Modify the paths in Endo_Analysis.R to match your preferred local file structure
5. Run the code (make sure to install libraries which you are missing)
What software and package versions do I need to install?

Seurat Installation:
install.packages('Seurat')
#enter 'y' if any warnings pop up

splitstackshape Installation:
install.packages("splitstackshape")

ggplot2 Installation:
install.packages("ggplot2")

R version 4.2.1

RStudio Version 2023.12.0+369 (2023.12.0+369)

## References
1. Fonseca MAS, Haro M, Wright KN, Lin X et al. Single-cell transcriptomic analysis of endometriosis. Nat Genet 2023 Feb;55(2):255-267. PMID: 36624343

2. Pei FL, Jia JJ, Lin SH, Chen XX et al. Construction and evaluation of endometriosis diagnostic prediction model and immune infiltration based on efferocytosis-related genes. Front Mol Biosci 2023;10:1298457. PMID: 38370978


