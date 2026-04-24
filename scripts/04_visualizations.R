# Visualization of Cell–Cell Communication Comparison Results

library(CellChat)

############################################################
# 📂 Load merged CellChat object
############################################################

cellchat_merged <- readRDS("results/cellchat_merged.rds")

############################################################
# 📁 Create output folder if it does not exist
############################################################

dir.create("results/plots", recursive = TRUE, showWarnings = FALSE)

############################################################
# 1️⃣ Compare total interactions (count vs strength)
############################################################

png("results/plots/01_interaction_count_vs_strength.png",
    width = 1200, height = 800)

gg_count <- compareInteractions(
  cellchat_merged,
  show.legend = FALSE
)

gg_strength <- compareInteractions(
  cellchat_merged,
  show.legend = FALSE,
  measure = "weight"
)

print(gg_count + gg_strength)

dev.off()

############################################################
# 2️⃣ Differential interaction network
############################################################

png("results/plots/02_diff_interactions_strength.png",
    width = 800, height = 800)

netVisual_diffInteraction(
  cellchat_merged,
  weight.scale = TRUE
)

dev.off()

############################################################
# 3️⃣ Pathway-level comparison
############################################################

png("results/plots/03_pathway_comparison.png",
    width = 1000, height = 1200)

rankNet(
  cellchat_merged,
  mode = "comparison"
)

dev.off()
