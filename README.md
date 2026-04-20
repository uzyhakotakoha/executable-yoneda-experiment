# executable-yoneda-experiment

**AI-assisted Formalization Experiment of Yoneda Reconstruction in Cubical Agda**

This repository contains the experimental artifact created through collaboration between a human and three LLMs (ChatGPT, Grok, Claude).

### Purpose
To explore how AI can assist in making classical categorical concepts (Yoneda lemma) executable in Cubical Agda, with focus on reconstruction and normalization-based rewriting.

### Features
- Executable Yoneda reconstruction (`reconstruct`)
- Simple arithmetic expression optimizer with rewrite tracing
- Observational equivalence experiments

### Important Note
This is **an experimental demonstration**, not a fully verified formalization.  
The optimizer is heuristic. Soundness is only partially proven.

### Related Article
[note.com - ChatGPT・Grok・Claudeと共同で作った Executable Yoneda の実験記録](https://note.com/alert_sheep1149/n/neeb3f09def2c)

### Requirements
- Agda 2.6.4 or later
- `cubical` library

### How to Build & Test
```bash
# Clone this repository
git clone https://github.com/uzyhakotakoha/executable-yoneda-experiment.git
cd executable-yoneda-experiment

# Build main files
agda src/OGS-Optimizer.agda
agda examples/Demo-Optimizer.agda
