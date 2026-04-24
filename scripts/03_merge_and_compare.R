# Merge CellChat objects and prepare comparison

library(CellChat)

cellchat_cond1 <- readRDS("results/cellchat_condition1.rds")
cellchat_cond2 <- readRDS("results/cellchat_condition2.rds")

cellchat_cond1 <- netAnalysis_computeCentrality(cellchat_cond1, slot.name = "netP")
cellchat_cond2 <- netAnalysis_computeCentrality(cellchat_cond2, slot.name = "netP")

object.list <- list(
  Condition1 = cellchat_cond1,
  Condition2 = cellchat_cond2
)

cellchat_merged <- mergeCellChat(
  object.list,
  add.names = names(object.list)
)

saveRDS(cellchat_merged, "results/cellchat_merged.rds")
