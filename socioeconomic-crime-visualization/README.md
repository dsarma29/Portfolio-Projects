# Exploring the Impact of Socioeconomic Factors on Crime Rates in the U.S. (2010–2019)
A data visualization project using FBI & Census data to explore how income, employment, and demographics intersect with crime.

This project analyzes the connection between socioeconomic conditions—unemployment, income levels, race, age, gender—and crime rates across U.S. states and regions from 2010 to 2019. Through interactive dashboards and well-structured data, the project delivers actionable insights into regional disparities, systemic challenges, and evolving crime patterns.

## 🎯 Project Objective

- Identify and visualize patterns between socioeconomic inequality and crime rates to uncover systemic trends across regions and demographics.
- Visualize and compare trends by **region**, **state**, **demographics**, and **income group**.
- Provide clear, interactive tools for storytelling and exploration through Tableau dashboards.

## 📌 Project Scope
This was a solo project where I handled all aspects from data acquisition to final presentation:

- Extracted and cleaned raw data using Python.
- Merged FBI UCR crime data with Census employment and income statistics.
- Designed interactive Tableau dashboards to communicate findings clearly to both technical and non-technical audiences.
- Delivered a written report and presentation to highlight key trends, insights, and policy-relevant implications.
  
## 🛠️ Tools & Technologies

- **Python** – Data cleaning and preprocessing (Pandas, NumPy)
- **Tableau** – Visualization and dashboard design
- **Data Sources**:
  - [FBI Uniform Crime Reporting (UCR) Data](https://www.fbi.gov/how-we-can-help-you/more-fbi-services-and-information/ucr/publications)
  - [Census S2301: Employment Status](https://data.census.gov/)
  - [Census S1901: Income Data](https://data.census.gov/)

## 📁 Repository Structure
📁 socioeconomic-crime-visualization/

├── 📁 Datasets/                     # Contains datasets

├── Final Project Report_DS.pdf      # Full write-up

├── Final Project_DS.twbx            # Tableau workbook

├── FinalProjectPresentation_DS.pdf  # Project presentation

├── FinalProject_DS.ipynb            # Python notebook

└── README.md                        # Descriptive overview 


## 📊 Dashboards Overview
The project produced three dashboards, each designed to explore a different lens on the data:

**Dashboard 1: Socioeconomic Factors and Crime**
- Crime rates by income level (low, medium, high)
- Correlation between unemployment and violent crime
- Gender-based unemployment disparities
<img width="1088" height="583" alt="image" src="https://github.com/user-attachments/assets/677941d0-898b-4926-98b1-cf72c9780c7a" />

**Dashboard 2: Trends Across Regions**
- Multi-year comparison of violent/property crime and unemployment
- Regional patterns using 3-year moving averages
<img width="1091" height="562" alt="image" src="https://github.com/user-attachments/assets/4126b219-2aec-433e-b008-b10d268c1018" />

**Dashboard 3: Income and Employment Disparities**
- Unemployment trends by race and age group
- Median income by household type (married, family, non-family)

## 🔍 Key Insights

- Property crime rates are higher in low-income states.
- Youth (16–19) and minority groups face consistently higher unemployment.
- Aggravated assault is the most prevalent violent crime across all regions.
- The South and West report higher crime and unemployment levels than the Northeast and Midwest.

## 📦 Data Access

All cleaned datasets used in this project are available in the `Datasets/` folder. These were processed from publicly available raw data using the Python notebook included in the root directory. No raw data files are included due to size and source restrictions.

---
