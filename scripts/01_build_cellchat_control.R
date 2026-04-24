# Build CellChat object for Condition 1

library(CellChat)
library(Seurat)
library(future)

plan(sequential)
options(future.globals.maxSize = +Inf)

seurat_obj <- readRDS("data/seurat_obj.rds")

seurat_obj$samples <- factor(seurat_obj$Sample)
seurat_obj <- subset(seurat_obj, subset = celltype != "Low_confidence")

# Subset Condition 1
seurat_cond1 <- subset(seurat_obj, subset = Group == "Condition1")
Idents(seurat_cond1) <- "celltype"

cellchat_cond1 <- createCellChat(
  object = seurat_cond1,
  group.by = "celltype",
  assay = "RNA"
)

cellchat_cond1@DB <- CellChatDB.mouse

cellchat_cond1 <- subsetData(cellchat_cond1)
cellchat_cond1 <- identifyOverExpressedGenes(cellchat_cond1)
cellchat_cond1 <- identifyOverExpressedInteractions(cellchat_cond1)
cellchat_cond1 <- computeCommunProb(cellchat_cond1)
cellchat_cond1 <- filterCommunication(cellchat_cond1)
cellchat_cond1 <- computeCommunProbPathway(cellchat_cond1)
cellchat_cond1 <- aggregateNet(cellchat_cond1)

saveRDS(cellchat_cond1, "results/cellchat_condition1.rds")
