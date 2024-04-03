### title: "Endometrium scRNA-seq QC Plot"
### author: "Andrew Ding"
### output: Mitochondrial QC Violin Plot

#Load Libraries
library(Seurat)
library(splitstackshape)
library(ggplot2)
set.seed(1)

# Individual Samples
sce1<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample14/outs/filtered_feature_bc_matrix")
sce2<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample15/outs/filtered_feature_bc_matrix")
sce3<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample16/outs/filtered_feature_bc_matrix")
sce4<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample17/outs/filtered_feature_bc_matrix")
sce5<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample24/outs/filtered_feature_bc_matrix")
sce6<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample25/outs/filtered_feature_bc_matrix")
sce7<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample26/outs/filtered_feature_bc_matrix")
sce8<-Read10X("/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Data/sample27/outs/filtered_feature_bc_matrix")

sce1=CreateSeuratObject(counts = sce1)
sce2=CreateSeuratObject(counts = sce2)
sce3=CreateSeuratObject(counts = sce3)
sce4=CreateSeuratObject(counts = sce4)
sce5=CreateSeuratObject(counts = sce5)
sce6=CreateSeuratObject(counts = sce6)
sce7=CreateSeuratObject(counts = sce7)
sce8=CreateSeuratObject(counts = sce8)

sce.all <- merge(sce1, y = c(sce2,sce3,sce4,sce5,sce6,sce7,sce8), add.cell.ids = c("S14","S15","S16","S17","S24","S25","S26","S27"), project = "Endo")

head(sce.all@meta.data)

# Adding sample identity metadata
meta<-sce.all@meta.data
meta$id_row<-rownames(meta)
head(meta)
meta$id_row_1<-rownames(meta) 
meta1<-cSplit(meta, "id_row_1", "_") 
meta1<-as.data.frame(meta1)
rownames(meta1)<-meta1$id_row
meta$id_row<-NULL
meta1$id_row<-NULL
meta1$id_row_1_2<-NULL
meta1$orig.ident<-NULL
colnames(meta1)[3]<-"orig.ident"
sce.all_1<-AddMetaData(sce.all,meta1)
sce.all<-sce.all_1
table(sce.all$orig.ident)

# Clean up
rm(meta, meta1, sce.all_1, sce1, sce2, sce3, sce4, sce5, sce6, sce7, sce8)
gc()

# Find %UMIs in MT genes
MT.genes <- grep("^MT-", rownames(sce.all), value = TRUE)
sce.all[["percent.mt"]] <- PercentageFeatureSet(sce.all, features = MT.genes)
# Violin Plot of Mitochondrial Content
VlnPlot(sce.all, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)
ggsave("AggEndoMito_VlnPlt.png", path = "/Volumes/Extreme Pro/Endometrium scRNAseq Analysis/Plots", width = 5000, height = 3000, units = "px")
