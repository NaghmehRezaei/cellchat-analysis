# CellChat Analysis: sTREM2 vs EGFP

## 🧠 Project Overview
This project investigates how **sTREM2 overexpression alters cell–cell communication** in liver using single-cell RNA-seq data and CellChat.

We compare:
- **Control (EGFP)**
- **sTREM2 overexpression**

---

## 🔬 Biological Questions
- Does sTREM2 reduce communication?
- Which cell types are most affected?
- Which pathways change?
- Is this just intensity change or real **network rewiring**?

---

## ⚙️ Workflow
1. Build CellChat objects  
2. Infer communication networks  
3. Compare interaction number & strength  
4. Identify pathway changes  
5. Detect network rewiring  
6. Analyze ligand–receptor interactions  

---

# 📊 Results

---

## 1️⃣ Global Communication Changes
![Interaction](Results/plots/01_interaction_count_vs_strength.png)

sTREM2 shows **reduced number and strength of interactions**, indicating global suppression.

---

## 2️⃣ Interaction Networks

### Control
![Control](Results/plots/02_circle_control.png)

### sTREM2
![sTREM2](Results/plots/02_circle_strem2.png)

The sTREM2 network shows **fewer and weaker connections**.

---

## 3️⃣ Differential Interaction Changes

### Count
![Diff Count](Results/plots/03a_diff_interactions_count.png)

### Strength
![Diff Strength](Results/plots/03b_diff_interactions_strength.png)

Blue edges = **lost interactions in sTREM2** → widespread reduction.

---

## 4️⃣ Heatmap of Interaction Changes
![Heatmap](Results/plots/04_differential_heatmaps.png)

Most cell-type pairs show **reduced communication**.

---

## 5️⃣ Pathway-Level Changes

### Relative Activity
![RankNet Stacked](Results/plots/05_rankNet_stacked.png)

### Absolute Activity
![RankNet Side](Results/plots/06_rankNet_sidebyside.png)

Pathways are **globally reduced in sTREM2**.

---

## 6️⃣ Cell-Type Signaling Changes

### Outgoing (Control)
![Out Control](Results/plots/07_outgoing_heatmap_Control.png)

### Outgoing (sTREM2)
![Out sTREM2](Results/plots/08_outgoing_heatmap_sTREM2.png)

### Incoming (Control)
![In Control](Results/plots/09_incoming_heatmap_Control.png)

### Incoming (sTREM2)
![In sTREM2](Results/plots/10_incoming_heatmap_sTREM2.png)

Cell types **lose signaling roles and become less active** in sTREM2.

---

## 7️⃣ Key Interaction Examples

### HSC → All
![HSC](Results/plots/11_HSC_to_all.png)

### LSEC → Targets
![LSEC](Results/plots/12_LSEC_to_targets.png)

### Hepatocyte → Endothelial
![Hep](Results/plots/13_Hep_to_endothelial.png)

### Cholangiocyte → Immune
![Chol](Results/plots/14_Chol_to_immune.png)

These highlight **specific communication axes affected**.

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

These reveal **specific ligand–receptor changes** driving the phenotype.

---

## 9️⃣ Network Rewiring (Key Result)

### Embedding
![Embedding](Results/plots/14_pairwise_embedding.png)

### Zoom
![Embedding Zoom](Results/plots/15_pairwise_embedding_zoom.png)

Pathways shift positions →  
👉 sTREM2 causes **true network rewiring**, not just weaker signaling.

---

## 🔟 Condition-Specific Pathways
![RankSimilarity](Results/plots/16_rankSimilarity.png)

Top pathways show the **strongest biological differences**.

---

# 🧬 Key Biological Insights

- Global reduction in communication  
- Loss of signaling diversity  
- Strong shift in pathway usage  
- Increased dominance of certain axes (e.g., ECM/SPP1)  
- Evidence of **network rewiring**  

---

# 📁 Repository Structure

- `scripts/` → analysis code  
- `Results/plots/` → figures  
- `Results/` → processed outputs  

---

# ⚠️ Notes

- Raw data not included  
- Mouse CellChat database used  
- Sequential processing due to memory constraints  

---

# 👩‍🔬 Author
Nelly (nrezaei)
