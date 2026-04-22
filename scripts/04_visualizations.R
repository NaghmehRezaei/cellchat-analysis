# Visualization of CellChat comparison results

library(CellChat)

# Load merged object
cellchat_merged <- readRDS("results/cellchat_merged.rds")

# Create plots folder if not exists
dir.create("results/plots", recursive = TRUE, showWarnings = FALSE)

############################################################
# 1️⃣ Interaction count vs strength
############################################################

png("results/plots/01_interaction_compare.png", width = 1200, height = 800)

gg1 <- compareInteractions(cellchat_merged, show.legend = FALSE)
gg2 <- compareInteractions(cellchat_merged, show.legend = FALSE, measure = "weight")

print(gg1 + gg2)

dev.off()

############################################################
# 2️⃣ Differential interaction network
############################################################

png("results/plots/02_diff_interactions.png", width = 800, height = 800)

netVisual_diffInteraction(
  cellchat_merged,
  weight.scale = TRUE
)

dev.off()

############################################################
# 3️⃣ Pathway comparison
############################################################

png("results/plots/03_rankNet.png", width = 1000, height = 1200)

rankNet(
  cellchat_merged,
  mode = "comparison"
)

dev.off()
