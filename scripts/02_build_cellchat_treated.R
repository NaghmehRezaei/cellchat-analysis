# Build CellChat object for Condition 2

library(CellChat)
library(Seurat)
library(future)

plan(sequential)
options(future.globals.maxSize = +Inf)

seurat_obj <- readRDS("data/seurat_obj.rds")

seurat_obj$samples <- factor(seurat_obj$Sample)
seurat_obj <- subset(seurat_obj, subset = celltype != "Low_confidence")

# Subset Condition 2
seurat_cond2 <- subset(seurat_obj, subset = Group == "Condition2")
Idents(seurat_cond2) <- "celltype"

cellchat_cond2 <- createCellChat(
  object = seurat_cond2,
  group.by = "celltype",
  assay = "RNA"
)

cellchat_cond2@DB <- CellChatDB.mouse

cellchat_cond2 <- subsetData(cellchat_cond2)
cellchat_cond2 <- identifyOverExpressedGenes(cellchat_cond2)
cellchat_cond2 <- identifyOverExpressedInteractions(cellchat_cond2)
cellchat_cond2 <- computeCommunProb(cellchat_cond2)
cellchat_cond2 <- filterCommunication(cellchat_cond2)
cellchat_cond2 <- computeCommunProbPathway(cellchat_cond2)
cellchat_cond2 <- aggregateNet(cellchat_cond2)

saveRDS(cellchat_cond2, "results/cellchat_condition2.rds")
