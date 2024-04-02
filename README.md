# 20.440 PSET6

## Overview
This repo contains the necessary R script and instructions to reproduce a mitochondrial content violin plot for 8 endometrium scRNA-seq samples which we aggregated together. Analysis was performed in R using Seurat v5 [1].

## Data
scRNA-seq of endometrial samples were generated using Illumina 10xv3 Chemistry on a NovaSeq S4 and posted to the GEO database for public use [2][3].

Single cells were captured and barcoded using the 10X Chromium platform. ScRNA-seq libraries were prepared following the Chromium Single Cell 3' Reagent Kits User Guide (v2/v3). Gel Bead-In Emulsions were generated using single cell preparations. Libraries were quantified using Agilent Bioanalyzer High Sensitivity DNA chips and pooled together before sequencing on a NovaSeq S4.

GEO Asscession URL:
https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE213216

GEO Samples used:

- GSM6574518
- GSM6574519
- GSM6574520
- GSM6574521
- GSM6574528
- GSM6574529
- GSM6574530
- GSM6574531

Also see references section for citations.

The data is also described in the meta data of the GSM page and in the csv located in the Data folder of this repository. The data being used are single-cell RNA sequencing samples from [2][3], studying the single-cell transcriptome in endometriosis. We are currently focusing on 8 samples split between 2 individuals (each individual with 2 endometrial samples and 2 control samples).

Data Characteristics in Short:
- Tissue samples from female donors
- 2 patients
- 7 unique anatomical locations
- 3 major classes (endometriosis, no endometriosis, eutopic endometrium)

## Folder structure
`Cluster_scripts` contains shell scripts used to download fastqs from Sequence Read Archive (SRA) and process them into spliced/unspliced count matrices. These files are relevant to our final project, but are not used to generate a figure for Pset 6.

`Data` contains a csv file with the GEO acession ids for the 8 samples used in the violin plot for Pset 6.

`Figures` contains a png of the mitochondrial violin plot figure for Pset 6.

`R_scripts` contains the R script used to generate the mitochondrial violin plot figure for Pset 6.

## Installation
How do I run your code?
1. Download the required data files from the GEO database and unzip them
2. Download the R script file (`Endo_Analysis.R`)
3. Install R studio or some other means of running R code
4. Modify the paths in `Endo_Analysis.R` to match your preferred local file structure
5. Run the code (make sure to install libraries which you are missing)
What software and package versions do I need to install?

Seurat Installation:

`install.packages('Seurat')`
`#enter 'y' if any warnings pop up`

splitstackshape Installation:

`install.packages("splitstackshape")`

ggplot2 Installation:

`install.packages("ggplot2")`

R version 4.2.1

RStudio Version 2023.12.0+369 (2023.12.0+369)

## References

1. Y. Hao et al., “Dictionary learning for integrative, multimodal and scalable single-cell analysis,” Nat Biotechnol, vol. 42, no. 2, pp. 293–304, Feb. 2024, doi: 10.1038/s41587-023-01767-y.

2. Fonseca MAS, Haro M, Wright KN, Lin X et al. Single-cell transcriptomic analysis of endometriosis. Nat Genet 2023 Feb;55(2):255-267. PMID: 36624343

3. Pei FL, Jia JJ, Lin SH, Chen XX et al. Construction and evaluation of endometriosis diagnostic prediction model and immune infiltration based on efferocytosis-related genes. Front Mol Biosci 2023;10:1298457. PMID: 38370978


