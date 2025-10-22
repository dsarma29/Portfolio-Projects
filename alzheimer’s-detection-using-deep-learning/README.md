# Alzheimer's Disease Detection Using 3D CNN and MRI Analysis

This project uses 3D MRI brain scans to classify Alzheimer’s Disease stages using a deep learning model built with PyTorch and MONAI. It emphasizes both accuracy and explainability, leveraging Grad-CAM to visualize which brain regions contribute to model decisions.

## 🎯 Project Objective

- Build a model to classify Alzheimer’s disease using volumetric (3D) MRI scans.
- Validate model performance with focus on **recall**, a key metric in medical diagnosis.
- Apply **explainable AI** techniques (Grad-CAM) for transparency and clinical interpretability.

## 👩‍💻 My Contribution

As part of a 3-member team:

- Led the **research and literature review**, identifying gaps in existing Alzheimer's detection models and highlighting the importance of explainability in clinical adoption.
- Contributed to **model development and validation**, including testing model performance and analyzing Grad-CAM heatmaps.
- Interpreted results in a clinical context, focusing on biologically plausible brain region activation.
- Co-authored the project report and presentation, translating technical outputs into clear, actionable insights for academic and applied audiences.


## 🛠️ Tools & Technologies

- **Python** – PyTorch, MONAI, NumPy
- **Machine Learning** – 3D ResNet-50 CNN
- **Explainable AI** – Grad-CAM for attention visualization
- **Visualization** – 3D activation overlays with brain atlas reference
- **Dataset** – [OASIS-3](https://www.oasis-brains.org/) (not included due to access restrictions)

## 📁 Repository Structure
📁 alzheimers-detection-deep-learning/

├── FinalProjectPresentation_GoTG.pptx # Slide deck

├── FinalProjectReport_GoTG.pdf # Full written report

├── FinalProject_GoTG.ipynb # Python notebook with model pipeline

├── FinalProject_GoTG.html # HTML version of notebook

└── README.md # Project overview

## 📊 Results Summary

| Metric        | Score  |
|---------------|--------|
| Recall        | 93.6%  |
| F1 Score      | 62.7%  |
| Accuracy      | 53.1%  |
| Precision     | 47.3%  |

> **Note:** Recall was prioritized to minimize false negatives in dementia detection.

## 🔬 Key Takeaways

- 3D convolutional networks are effective for MRI-based classification but require thoughtful tuning and class balancing.
- Grad-CAM overlays help ensure model transparency by linking activation to known brain regions.
- Model interpretability adds clinical value beyond accuracy metrics.

## 📦 Data Access

The dataset used in this project, **OASIS-3**, is publicly available but requires registration. It is **not included** in this repo due to licensing and size constraints. You can request access from the [OASIS website](https://www.oasis-brains.org/).

---
