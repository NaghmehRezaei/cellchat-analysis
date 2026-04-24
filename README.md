# CellChat Analysis: sTREM2 vs EGFP

## 🧠 Project Overview
This project investigates how **sTREM2 overexpression alters cell–cell communication** in liver using single-cell RNA-seq data and CellChat.

---

## 🔬 Biological Question
How does sTREM2 change:
- Intercellular signaling strength?
- Communication network structure?
- Key ligand–receptor interactions?

---

## ⚙️ Workflow
1. Build CellChat objects (Control vs sTREM2)
2. Infer communication networks
3. Compare interaction number and strength
4. Identify pathway-level changes
5. Detect network rewiring (embedding)
6. Analyze key ligand–receptor interactions

---

## 📊 Key Results

### 1️⃣ Global Communication Changes
![Interaction](results/plots/01_interaction_compare.png)

sTREM2 shows reduced overall communication strength compared to control.

---

### 2️⃣ Differential Interaction Network
![Diff Network](results/plots/02_diff_interactions.png)

Communication between cell types is broadly reduced and reorganized in sTREM2.

---

### 3️⃣ Pathway-Level Changes
![Pathway](results/plots/03_rankNet.png)

Several signaling pathways show reduced activity in sTREM2.

---

### 4️⃣ Network Rewiring (Most Important)
![Embedding](results/plots/04_embedding.png)

Key pathways (ECM, SPP1, WNT) show rewiring — not just changes in strength.

---

### 5️⃣ Condition-Specific Pathways
![RankSimilarity](results/plots/06_rankSimilarity.png)

Top pathways are strongly altered between conditions.

---

## 🧬 Key Biological Insights

- Global reduction in signaling in sTREM2  
- Loss of signaling diversity  
- Shift toward **HSC-driven communication**  
- Emergence of **SPP1-mediated signaling**  
- Evidence of **network rewiring**

---

## 📁 Repository Structure

- `scripts/` → analysis pipeline  
- `results/plots/` → figures  
- `results/` → processed outputs  

---

## ⚠️ Notes
- Raw data not included  
- Mouse database used (CellChatDB.mouse)  
- Sequential execution used due to memory limits  

---

## 👩‍🔬 Author
Nelly (nrezaei)
