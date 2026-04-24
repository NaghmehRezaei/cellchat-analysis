# CellChat Analysis of Cell–Cell Communication

## 🧠 Project Overview
This project investigates how **cell–cell communication networks change between two biological conditions** using single-cell RNA-seq data and the CellChat framework.

The analysis focuses on:
- Global communication patterns  
- Pathway-level signaling changes  
- Ligand–receptor interactions  
- Network rewiring across conditions  

---

## 🔬 Biological Questions
- How does intercellular communication differ between conditions?
- Which cell types are most affected?
- Which signaling pathways change the most?
- Are differences due to signal strength or **network rewiring**?

---

## ⚙️ Analysis Workflow
1. Construct CellChat objects for each condition  
2. Infer communication probabilities  
3. Compare interaction number and strength  
4. Identify differential signaling pathways  
5. Perform pathway-level analysis  
6. Detect network rewiring using embedding  
7. Analyze ligand–receptor interactions  

---

# 📊 Key Results

---

## 1️⃣ Global Communication Changes
![Interaction](results/01_interaction_count_vs_strength.png)

There is a clear difference in both the **number and strength of interactions** between the two conditions, indicating global changes in communication.

---

## 2️⃣ Differential Interaction Network
![Diff Network](results/03b_diff_interactions_strength.png)

Cell–cell communication is broadly reorganized, with multiple interactions either strengthened or reduced.

---

## 3️⃣ Systematic Interaction Changes (Heatmap)
![Heatmap](results/04_differential_heatmaps.png)

The heatmap summarizes interaction changes across all cell-type pairs, highlighting widespread differences in signaling patterns.

---

## 4️⃣ Pathway-Level Changes
![Pathway](results/05_rankNet_stacked.png)

Signaling pathways show condition-dependent activity, indicating shifts in pathway usage and communication dynamics.

---

## 5️⃣ Network Rewiring (Key Result)
![Embedding](results/14_pairwise_embedding.png)

Pathway embedding demonstrates that several signaling pathways change their cellular interaction patterns, indicating **network rewiring**, not just changes in intensity.

---

## 6️⃣ Condition-Specific Pathways
![RankSimilarity](results/16_rankSimilarity.png)

Top-ranked pathways show the strongest differences between conditions and represent the most biologically relevant signaling changes.

---

## 7️⃣ Example Ligand–Receptor Interaction
![Chord](results/13_chord_HSC_Hepatocyte.png)

Detailed ligand–receptor analysis highlights how specific signaling interactions between selected cell types differ between conditions.

---

# 🧬 Key Insights

- Global differences in intercellular communication  
- Changes in signaling strength across pathways  
- Altered communication patterns between cell types  
- Evidence of **network-level rewiring**  
- Identification of condition-specific signaling programs  

---

# 📁 Repository Structure

- `scripts/` → analysis pipeline  
- `results/` → figures and outputs  

---

# ⚠️ Notes

- Raw data is not included  
- Analysis uses the CellChat framework  
- Sequential execution is used to avoid memory issues  

---

# 👩‍🔬 Author
Nelly (nrezaei)
