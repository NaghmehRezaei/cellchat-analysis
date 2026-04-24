# Pathway-level analysis and embedding (CellChat)

library(CellChat)
library(future)

############################################################
# 🔧 Setup (safe execution for large objects)
############################################################

plan(sequential)
options(future.globals.maxSize = +Inf)
options(future.rng.onMisuse = "ignore")

############################################################
# 📂 Load merged CellChat object
############################################################

cellchat_merged <- readRDS("results/cellchat_merged.rds")

############################################################
# 📁 Create output directory if needed
############################################################

dir.create("results/plots", recursive = TRUE, showWarnings = FALSE)

############################################################
# 1️⃣ Compute pathway similarity (functional)
############################################################

cellchat_merged <- computeNetSimilarityPairwise(
  cellchat_merged,
  type = "functional"
)

############################################################
# 2️⃣ Perform low-dimensional embedding
############################################################

cellchat_merged <- netEmbedding(
  cellchat_merged,
  type = "functional"
)

############################################################
# 3️⃣ Cluster signaling pathways
############################################################

set.seed(123)

cellchat_merged <- netClustering(
  cellchat_merged,
  type = "functional"
)

############################################################
# 4️⃣ Visualize pathway embedding
############################################################

png("results/plots/04_pathway_embedding.png",
    width = 1200, height = 1000)

netVisual_embeddingPairwise(
  cellchat_merged,
  type = "functional",
  label.size = 3.5
)

dev.off()

############################################################
# 5️⃣ Zoomed-in embedding view
############################################################

png("results/plots/05_pathway_embedding_zoom.png",
    width = 1200, height = 1000)

netVisual_embeddingPairwiseZoomIn(
  cellchat_merged,
  type = "functional",
  nCol = 2
)

dev.off()

############################################################
# 6️⃣ Identify condition-specific pathways
############################################################

png("results/plots/06_pathway_rankSimilarity.png",
    width = 900, height = 1100)

rankSimilarity(
  cellchat_merged,
  type = "functional"
)

dev.off()

############################################################
# 💾 Save updated object
############################################################

saveRDS(
  cellchat_merged,
  "results/cellchat_merged_with_pathways.rds"
)
