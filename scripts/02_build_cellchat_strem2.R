# Build CellChat object for sTREM2

library(CellChat)
library(Seurat)
library(future)

plan(sequential)
options(future.globals.maxSize = +Inf)

seurat_obj <- readRDS("data/seurat_obj.rds")

seurat_obj$samples <- factor(seurat_obj$Sample)
seurat_obj <- subset(seurat_obj, subset = celltype != "Low_confidence")

seurat_strem2 <- subset(seurat_obj, subset = Group == "T2_ST26M")
Idents(seurat_strem2) <- "celltype"

cellchat_strem2 <- createCellChat(
  object = seurat_strem2,
  group.by = "celltype",
  assay = "RNA"
)

cellchat_strem2@DB <- CellChatDB.mouse

cellchat_strem2 <- subsetData(cellchat_strem2)
cellchat_strem2 <- identifyOverExpressedGenes(cellchat_strem2)
cellchat_strem2 <- identifyOverExpressedInteractions(cellchat_strem2)
cellchat_strem2 <- computeCommunProb(cellchat_strem2)
cellchat_strem2 <- filterCommunication(cellchat_strem2)
cellchat_strem2 <- computeCommunProbPathway(cellchat_strem2)
cellchat_strem2 <- aggregateNet(cellchat_strem2)

saveRDS(cellchat_strem2, "results/cellchat_strem2.rds")
