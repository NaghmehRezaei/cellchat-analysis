# CellChat Analysis: sTREM2 vs EGFP

## 🧠 Project Overview
This project investigates how **sTREM2 overexpression alters cell–cell communication** in liver using single-cell RNA-seq data and the **CellChat** framework.

The goal is to understand how signaling networks, pathways, and ligand–receptor interactions are rewired between:
- **Control (EGFP)**
- **sTREM2 overexpression**

---

## 🔬 Biological Questions
- Does sTREM2 change overall communication strength?
- Which cell types are most affected?
- Which signaling pathways are altered?
- Are changes due to intensity or **network rewiring**?

---

## ⚙️ Analysis Workflow
1. Build CellChat objects per condition  
2. Infer communication probabilities  
3. Compare interaction number and strength  
4. Identify differential interactions  
5. Analyze pathway-level changes  
6. Perform manifold learning (embedding)  
7. Detect condition-specific signaling  
8. Investigate ligand–receptor mechanisms  

---

# 📊 Results

---

## 1️⃣ Global Communication Changes
![Interaction](Results/plots/01_interaction_count_vs_strength.png)

sTREM2 shows a strong **reduction in both interaction number and overall signaling strength**, indicating global suppression of communication.

---

## 2️⃣ Interaction Network per Condition

### Control Network
![Control Circle](Results/plots/02_circle_control.png)

### sTREM2 Network
![sTREM2 Circle](Results/plots/02_circle_strem2.png)

Each node represents a cell type, and edges represent communication.  
The sTREM2 network shows **reduced connectivity and fewer strong interactions**.

---

## 3️⃣ Differential Interaction Networks

### Interaction Count Changes
![Diff Count](Results/plots/03a_diff_interactions_count.png)

### Interaction Strength Changes
![Diff Strength](Results/plots/03b_diff_interactions_strength.png)

Blue edges indicate **lost interactions in sTREM2**, showing widespread reduction across many cell-type pairs.

---

## 4️⃣ Systematic Interaction Changes (Heatmaps)
![Heatmaps](Results/plots/04_differential_heatmaps.png)

These heatmaps summarize interaction changes across all sender–receiver pairs.  
Most cell types show **reduced outgoing and incoming signaling** in sTREM2.

---

## 5️⃣ Pathway-Level Communication

### Relative Information Flow
![RankNet Stacked](Results/plots/05_rankNet_stacked.png)

Most pathways are dominated by control, indicating reduced pathway activity in sTREM2.

### Absolute Information Flow
![RankNet Side](Results/plots/06_rankNet_sidebyside.png)

Confirms that pathway activity is globally lower in sTREM2, not just relatively shifted.

---

## 6️⃣ Cell-Type Specific Signaling Changes

### Outgoing Signaling (Control)
![Outgoing Control](Results/plots/07_outgoing_heatmap_Control.png)

### Outgoing Signaling (sTREM2)
![Outgoing sTREM2](Results/plots/08_outgoing_heatmap_sTREM2.png)

### Incoming Signaling (Control)
![Incoming Control](Results/plots/09_incoming_heatmap_Control.png)

### Incoming Signaling (sTREM2)
![Incoming sTREM2](Results/plots/10_incoming_heatmap_sTREM2.png)

These plots show how **specific cell types change their signaling roles**.  
sTREM2 shifts communication toward fewer dominant pathways.

---

## 7️⃣ Key Interaction Examples

### HSC → All Targets
![HSC](Results/plots/11_HSC_to_all.png)

### LSEC → Targets
![LSEC](Results/plots/12_LSEC_to_targets.png)

### Hepatocyte → Endothelial
![Hep](Results/plots/13_Hep_to_endothelial.png)

### Cholangiocyte → Immune
![Chol](Results/plots/14_Chol_to_immune.png)

These highlight **specific communication axes affected by sTREM2**.

---

## 8️⃣ Ligand–Receptor Mechanisms

### HSC → Hepatocyte (Control)
![Chord Control](Results/plots/12_chord_HSC_Hepatocyte_Control.png)

### HSC → Hepatocyte (sTREM2)
![Chord sTREM2](Results/plots/13_chord_HSC_Hepatocyte_sTREM2.png)

### Cholangiocyte → Kupffer (Control)
![Chord Chol Control](Results/plots/14_chord_Chol_Kupffer_Control.png)

### Cholangiocyte → Kupffer (sTREM2)
![Chord Chol sTREM2](Results/plots/15_chord_Chol_Kupffer_sTREM2.png)

Chord diagrams reveal **specific ligand–receptor interactions driving communication changes**.

---

## 9️⃣ Network Rewiring (Most Important Result)

### Pathway Embedding
![Embedding](Results/plots/14_pairwise_embedding.png)

### Zoomed View
![Embedding Zoom](Results/plots/15_pairwise_embedding_zoom.png)

Pathways shift position between conditions, showing that:

👉 sTREM2 causes **true network rewiring**, not just intensity changes.

---

## 🔟 Condition-Specific Pathways
![RankSimilarity](Results/plots/16_rankSimilarity.png)

Top-ranked pathways show the strongest differences and represent the **most biologically relevant changes**.

---

# 🧬 Key Biological Insights

- Global reduction in signaling in sTREM2  
- Loss of communication diversity  
- Increased dominance of specific pathways  
- Strong involvement of **HSC-driven signaling**  
- Emergence of **SPP1 / ECM-related pathways**  
- Clear evidence of **network rewiring**  

---

# 📁 Repository Structure

- `scripts/` → full analysis pipeline  
- `Results/plots/` → visualization outputs  
- `Results/` → processed objects  

---

# ⚠️ Notes

- Raw data not included  
- Mouse database used (`CellChatDB.mouse`)  
- Sequential execution used to avoid memory issues  

---

# 👩‍🔬 Author
Nelly (nrezaei)
