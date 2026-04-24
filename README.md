# CellChat Analysis: sTREM2 vs EGFP

## 🧠 Project Overview
This project analyzes how **sTREM2 overexpression alters cell–cell communication** in liver using single-cell RNA-seq data and CellChat.

---

## 🔬 Biological Question
How does sTREM2 change:
- Intercellular communication strength?
- Network structure (who talks to whom)?
- Key signaling pathways and ligand–receptor interactions?

---

## ⚙️ Workflow
1. Build CellChat objects (Control vs sTREM2)
2. Infer communication networks
3. Compare interaction number and strength
4. Identify pathway-level differences
5. Detect network rewiring using embedding
6. Identify condition-specific signaling pathways

---

## 📊 Key Results

### 1️⃣ Global Communication Changes
![Interaction](results/plots/01_interaction_count_vs_strength.png)

sTREM2 shows a clear reduction in overall communication strength compared to control.

---

### 2️⃣ Differential Interaction Network
![Diff Network](results/plots/03b_diff_interactions_strength.png)

Cell–cell communication is broadly reduced and reorganized in sTREM2, indicating global network suppression.

---

### 3️⃣ Systematic Interaction Changes (Heatmap)
![Heatmap](results/plots/04_differential_heatmaps.png)

The heatmap shows which specific cell-type interactions increase or decrease, highlighting widespread reduction across many pairs.

---

### 4️⃣ Pathway-Level Changes
![Pathway](results/plots/05_rankNet_stacked.png)

Many signaling pathways shift toward control dominance, indicating reduced pathway activity in sTREM2.

---

### 5️⃣ Network Rewiring (Most Important Result)
![Embedding](results/plots/14_pairwise_embedding.png)

Key pathways (such as ECM, SPP1, and WNT) change their cellular communication patterns, showing true **network rewiring**, not just changes in intensity.

---

### 6️⃣ Condition-Specific Pathways
![RankSimilarity](results/plots/16_rankSimilarity.png)

Top-ranked pathways show the strongest differences between control and sTREM2, representing the most biologically altered signaling programs.

---

### 7️⃣ Example Mechanistic Interaction (HSC → Hepatocyte)
![Chord](results/plots/13_chord_HSC_Hepatocyte.png)

Detailed ligand–receptor analysis reveals how specific signaling interactions between HSC and hepatocytes are altered in sTREM2.

---

## 🧬 Key Biological Insights

- Global reduction in cell–cell communication in sTREM2  
- Loss of signaling diversity across pathways  
- Shift toward **HSC-driven signaling dominance**  
- Emergence of **SPP1-related signaling**  
- Evidence of **network rewiring**, not just up/down regulation  

---

## 📁 Repository Structure

- `scripts/` → analysis pipeline  
- `results/plots/` → visualization outputs  
- `results/` → processed CellChat objects  

---

## ⚠️ Notes

- Raw data is not included in this repository  
- Analysis uses `CellChatDB.mouse`  
- Sequential execution used to avoid memory issues  

---

## 👩‍🔬 Author
Nelly (nrezaei)
