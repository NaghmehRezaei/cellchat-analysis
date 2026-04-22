# Build CellChat object for Control (EGFP)

library(CellChat)
library(Seurat)
library(future)

plan(sequential)
options(future.globals.maxSize = +Inf)

seurat_obj <- readRDS("data/seurat_obj.rds")

seurat_obj$samples <- factor(seurat_obj$Sample)
seurat_obj <- subset(seurat_obj, subset = celltype != "Low_confidence")

seurat_control <- subset(seurat_obj, subset = Group == "T2_EGFP6M")
Idents(seurat_control) <- "celltype"

cellchat_control <- createCellChat(
  object = seurat_control,
  group.by = "celltype",
  assay = "RNA"
)

cellchat_control@DB <- CellChatDB.mouse

cellchat_control <- subsetData(cellchat_control)
cellchat_control <- identifyOverExpressedGenes(cellchat_control)
cellchat_control <- identifyOverExpressedInteractions(cellchat_control)
cellchat_control <- computeCommunProb(cellchat_control)
cellchat_control <- filterCommunication(cellchat_control)
cellchat_control <- computeCommunProbPathway(cellchat_control)
cellchat_control <- aggregateNet(cellchat_control)

saveRDS(cellchat_control, "results/cellchat_control.rds")
