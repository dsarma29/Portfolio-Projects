# ✈️ Airline Customer Satisfaction Analysis

## 📌 Project Overview
Customer satisfaction is crucial in the airline industry, impacting customer loyalty and retention. This project analyzes airline customer satisfaction using machine learning techniques. The goal is to identify the key factors influencing satisfaction and to develop a predictive model to classify passengers as satisfied or dissatisfied.

## ❓ Business Questions
- What are the key features that most influence customer satisfaction in airline travel?
- How can airlines use predictive modeling to enhance customer service and target dissatisfied passengers?
- Which passenger demographics are most likely to be satisfied or dissatisfied?
- How do factors like seat comfort, in-flight entertainment, and cleanliness impact satisfaction levels?
- Can we accurately predict customer satisfaction using machine learning models?

## 📊 Dataset Description
- **Source:** [Kaggle - Airline Customer Satisfaction](https://www.kaggle.com/datasets/raminhuseyn/airline-customer-satisfaction)
- **Size:** 129,880 observations, 22 variables
- **Target Variable:** `satisfaction` (Satisfied/Dissatisfied)
- **Features:** 'seat_comfort', 'inflight_entertainment', 'cleanliness', 'food_and_drink', etc.

## 🏗️ Methodology
1. **Exploratory Data Analysis (EDA):** Identified trends and patterns in customer satisfaction.
2. **Feature Engineering:** Handled missing values, encoded categorical variables, and normalized numerical features.
3. **Machine Learning Modeling:** Applied a Random Forest Classifier to predict customer satisfaction.
4. **Model Evaluation:** Evaluated performance using Accuracy, Precision, Recall, and ROC-AUC scores.

## 🛠️ Tech Stack
- **Programming Language:** Python
- **Libraries:** Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
- **Machine Learning Model:** Random Forest Classifier
- **Environment:** Jupyter Notebook (Python 3.8)

## 🚀 Key Findings
- **Seat comfort, in-flight entertainment, and cleanliness** are major predictors of customer satisfaction.
- The Random Forest model achieved **95.6% accuracy** in predicting customer satisfaction.
- Business class passengers tend to have higher satisfaction rates compared to economy class.

## 📂 Repository Structure
📁 airline_customer_satisfaction

├── 📜 README.md                          # Overview of the project

├── 📜 AirlineCustomerSatisfaction.ipynb  # Main Google Colab Notebook with analysis

├── 📜 airline_customer_satisfaction.csv  # Raw data files (CSV) 

## ⚡ How to Run the Project
```bash
# Clone this repository
git clone https://github.com/yourusername/airline-customer-satisfaction.git

# Install dependencies
pip install -r requirements.txt

# Run Jupyter Notebook
jupyter notebook

This project is part of my data analytics portfolio to demonstrate machine learning application.
