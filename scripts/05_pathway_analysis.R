# Pathway-level analysis and embedding (CellChat)

library(CellChat)
library(future)

plan(sequential)
options(future.globals.maxSize = +Inf)
options(future.rng.onMisuse = "ignore")

# Load merged object
cellchat_merged <- readRDS("results/cellchat_merged.rds")

# Create plots folder
dir.create("results/plots", recursive = TRUE, showWarnings = FALSE)

############################################################
# 1️⃣ Compute pathway similarity across conditions
############################################################

cellchat_merged <- computeNetSimilarityPairwise(
  cellchat_merged,
  type = "functional"
)

############################################################
# 2️⃣ Embedding
############################################################

cellchat_merged <- netEmbedding(
  cellchat_merged,
  type = "functional"
)

############################################################
# 3️⃣ Clustering pathways
############################################################

set.seed(123)

cellchat_merged <- netClustering(
  cellchat_merged,
  type = "functional"
)

############################################################
# 4️⃣ Plot embedding
############################################################

png("results/plots/04_embedding.png", width = 1200, height = 1000)

netVisual_embeddingPairwise(
  cellchat_merged,
  type = "functional",
  label.size = 3.5
)

dev.off()

############################################################
# 5️⃣ Zoomed embedding
############################################################

png("results/plots/05_embedding_zoom.png", width = 1200, height = 1000)

netVisual_embeddingPairwiseZoomIn(
  cellchat_merged,
  type = "functional",
  nCol = 2
)

dev.off()

############################################################
# 6️⃣ Rank condition-specific pathways
############################################################

png("results/plots/06_rankSimilarity.png", width = 900, height = 1100)

rankSimilarity(
  cellchat_merged,
  type = "functional"
)

dev.off()

# Save updated object
saveRDS(cellchat_merged, "results/cellchat_merged_with_pathways.rds")
