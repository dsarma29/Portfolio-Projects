# **Heart Disease Prediction using Machine Learning**

## 🏥 **Introduction**

Heart disease is a leading cause of death globally, accounting for 31% of all deaths. Early detection is crucial. This project uses machine learning to predict heart disease likelihood based on medical attributes.

### 🎯 **Objective**:

- Predict heart disease using machine learning models.
- Identify key health indicators for heart disease risk.
- Compare model performance and find the best predictive approach.

---
## 📌 **Dataset Overview**  

- **Dataset Name:** Heart Failure Prediction Dataset  
- **Number of Features:** 13  
- **Target Variable:** Presence or absence of heart disease  
- **Source:** [Kaggle - Heart Failure Prediction](https://www.kaggle.com/code/tanmay111999/heart-failure-prediction-cv-score-90-5-models)  

---

## 📥 Data Import & Setup

Import necessary libraries and load the dataset. Prepare the data for analysis and modeling.  The dataset will train and evaluate machine learning models.

- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn
- **Dataset:** Heart disease prediction data (source: Kaggle)

## 🛠 **Data Preprocessing**  

## 1️⃣🧹Data Cleaning

Clean the dataset: handle missing values, convert categorical variables to numerical formats, and standardize features.  Ensure data quality for machine learning models.

- **Missing Values:** Identified and handled.
- **Categorical to Numerical:** Categorical variables encoded (e.g., one-hot encoding).
- **Standardization:** Numerical features scaled.

### **2️⃣ Exploratory Data Analysis (EDA)**  
####📊 **Key Insights from Data Visualization:**  
### ✔ Visualizing Heart Disease Distribution
    This section provides two visualizations to better understand the distribution of heart disease cases in the dataset.
    1. Pie Chart: Displays the percentage of patients with and without heart disease.
    2. Count Plot: Shows the total count of heart disease cases in the dataset, with labels indicating the exact count.

### ✔ Visualizing Categorical Variables vs. Heart Disease
    This section visualizes the relationship between categorical variables and the presence of heart disease using count plots. 
    Each plot shows the distribution of heart disease cases for different categories of the specified variables.


## 🏗️ **Model Training**

Train various machine learning models: Naïve Bayes, Decision Tree, and SVM.  These models are used for classification and offer different strengths.

### **🔍 Machine Learning Models Used:**  
✅ **Naïve Bayes**  
✅ **Decision Tree**  
✅ **Support Vector Machine (SVM)** 
- **Purpose:** Compare model performance to find the most effective one.


##🚀 **Model Evaluation**

### Model 1️⃣ : Decision Tree

*Concept:* Goodness of Split (Gini index, Entropy), Confusion Matrix

*Justification:* Decision Trees visualize factors leading to heart disease diagnosis, aiding healthcare professionals in explaining risk factors.


### Model 2️⃣ : Naive Bayes

*Concept:* K-Fold Cross-Validation, Confusion Matrix

*Justification:*  Naive Bayes is efficient for classification, especially with categorical data.  It quickly estimates the likelihood of heart disease based on features.


### Model 3️⃣ : SVM

*Concept:* Confusion Matrix

*Justification:*  SVM is effective for separating classes, particularly when data isn't linearly separable. It finds the optimal boundary between classes.


## 📊 **Accuracy Comparison**

A bar chart compares the accuracy scores of the three models, SVM, Naive Bayes, and Decision Tree, providing a visual representation of their performance.
