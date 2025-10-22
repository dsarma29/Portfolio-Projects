# 🦠 COVID-19 Data Analysis & Insights

## 📌 Project Overview
This project analyzes COVID-19 data using SQL to uncover insights related to infection rates, death rates, and vaccination progress across various countries and continents. Through structured queries, we derive meaningful business questions to assess the impact of COVID-19 and vaccination efforts globally.

## 📊 Dataset
The dataset used for this analysis is sourced from reliable COVID-19 tracking organizations. It includes:
- **📝 CovidDeaths**: Contains records on total cases, new cases, total deaths, and population by location and date.
- **💉 CovidVaccinations**: Includes vaccination data, such as new vaccinations and people fully vaccinated.

## 🔎 Key Business Questions & Insights

### 1️⃣ General Dataset Overview
**❓ Question:** What are the key columns in the dataset?
- **💡 Insight:** The dataset contains crucial attributes such as location, date, total_cases, new_cases, total_deaths, and population, which are essential for analyzing the spread and impact of COVID-19.

### 2️⃣ Total Cases vs. Total Deaths
**❓ Question:** What is the likelihood of dying if someone contracts COVID-19 in different countries?
- **💡 Insight:** The likelihood of death after contracting COVID-19 varies by country, highlighting disparities in healthcare systems, testing capabilities, and pandemic response strategies.

### 3️⃣ Countries with Highest Infection Rate Compared to Population
**❓ Question:** Which countries had the highest infection rate relative to their population?
- **💡 Insight:** Several countries had infection rates exceeding 10% of their population at peak levels, underscoring the rapid spread of the virus in certain regions.

### 4️⃣ Countries with Highest Death Count per Population
**❓ Question:** Which countries had the highest death count relative to their population?
- **💡 Insight:** Some countries experienced disproportionately high death rates relative to their population, indicating severe outbreaks and healthcare system challenges.

### 5️⃣ Continent with Highest Death Count
**❓ Question:** Which continent had the highest death count?
- **💡 Insight:** Europe recorded the highest total death count, reflecting differences in outbreak severity, containment measures, and healthcare infrastructure.

### 6️⃣ Global COVID-19 Summary
**❓ Question:** What are the total global COVID-19 cases and deaths?
- **💡 Insight:** The overall case fatality rate (death percentage) provides a macro view of the pandemic's scale and severity worldwide.

### 7️⃣ Vaccination Progress
**❓ Question:** What percentage of each country's population is fully vaccinated?
- **💡 Insight:** Vaccination rates varied widely across countries, influenced by factors such as healthcare infrastructure, vaccine access, and public response.

### 8️⃣ Using Temporary Tables for Vaccination Analysis
**❓ Question:** How can we store and retrieve vaccination progress using temporary tables?
- **💡 Insight:** Temporary tables improve query performance when analyzing large datasets and tracking vaccination trends.

### 9️⃣ Creating a View for Vaccination Analysis
**❓ Question:** How can we create a view to track vaccination progress over time?
- **💡 Insight:** A structured SQL view simplifies tracking vaccination trends over time, ensuring consistency in data analysis.

### 🔟 Ranking & Aggregation
**❓ Question:** Which countries had the highest and lowest COVID-19 cases, deaths, and vaccination rates?
- **💡 Insight:** By ranking countries based on COVID-19 metrics, we can identify regions that managed the pandemic effectively versus those that faced severe outbreaks.

## 🛠 SQL Techniques Used
- 📌 Data Aggregation (`SUM`, `MAX`, `AVG`)
- 📌 Conditional Calculations (`CASE WHEN`)
- 📌 Joins (`INNER JOIN` for combining CovidDeaths and CovidVaccinations data)
- 📌 Window Functions (`SUM() OVER` for rolling vaccination counts)
- 📌 Views & Temporary Tables (`CREATE VIEW`, `TEMP TABLE`)
- 📌 Common Table Expressions (CTEs) (`WITH` statements for modular queries)

## 🏆 Tools Used
- 📛 Microsoft SQL Server Management Studio (SSMS): SQL query execution and database management

- **🗄 SQL**: Data querying and transformation

📁 covid_data_analysis

├── 📜 README.md                    # Overview of the project

├── 📜 Covid19_DataAnalysis.sql     # SQL queries for analysis

├── 📜 CovidDeaths.xlsx             # COVID-19 dataset-1

├── 📜 CovidVaccinations.xlsx       # COVID-19 dataset-2




## 📢 Conclusion
This SQL-based COVID-19 analysis provides key insights into the pandemic's impact worldwide. The structured queries help in understanding infection rates, death rates, and vaccination progress. The project also demonstrates SQL techniques that enhance query efficiency and data interpretation.

