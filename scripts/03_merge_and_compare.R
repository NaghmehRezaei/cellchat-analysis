# Merge CellChat objects and prepare for comparison

library(CellChat)

# Load objects
cellchat_control <- readRDS("results/cellchat_control.rds")
cellchat_strem2  <- readRDS("results/cellchat_strem2.rds")

# Make sure centrality is computed
cellchat_control <- netAnalysis_computeCentrality(cellchat_control, slot.name = "netP")
cellchat_strem2  <- netAnalysis_computeCentrality(cellchat_strem2, slot.name = "netP")

# Create list (order matters: Control → sTREM2)
object.list <- list(
  Control = cellchat_control,
  sTREM2  = cellchat_strem2
)

# Merge
cellchat_merged <- mergeCellChat(
  object.list,
  add.names = names(object.list)
)

# Save merged object
saveRDS(cellchat_merged, "results/cellchat_merged.rds")

# Quick check
print(cellchat_merged)
