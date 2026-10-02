# Accident_Data_Analysis

# 🚗 Road Accident Data Analysis

## 📌 Project Overview

This project explores historical road accident data to understand accident characteristics and identify patterns associated with road accidents and their severity.

The analysis examines factors such as road type, junction control, speed limits, lighting conditions, weather, road surface conditions, vehicle types, accident time, geographical location, and the number of casualties and vehicles involved.

The goal is to transform raw accident data into meaningful insights that can support data-driven road safety analysis.

## 🎯 Problem Statement

Road accidents are associated with multiple road, traffic, environmental, and vehicle-related factors. Understanding the patterns in these factors can help identify conditions associated with accidents and more serious accident outcomes.

This project uses Exploratory Data Analysis (EDA) to investigate historical accident records, examine relationships between variables, and identify patterns that may be useful for further road safety analysis.

## 🎯 Project Objectives

- Understand the structure and characteristics of the accident dataset.
- Identify and handle missing values and duplicate records.
- Examine categorical and numerical variables.
- Analyze distributions and identify statistical outliers.
- Investigate relationships between numerical variables.
- Explore accident characteristics across road, traffic, environmental, and vehicle-related factors.
- Generate insights that can support further accident severity analysis.

## 🛠️ Tools & Technologies

- **Python** — Data analysis and preprocessing
- **Pandas** — Data manipulation and cleaning
- **NumPy** — Numerical operations
- **Matplotlib** — Data visualization
- **Seaborn** — Statistical visualization
- **Google Colab / Jupyter Notebook** — Development environment

## 📂 Dataset Description

The dataset contains historical road accident records with information about accident characteristics, location, environmental conditions, vehicles, and casualties.

Key columns analyzed include:

- `Accident Date`
- `Accident_Severity`
- `Junction_Control`
- `Junction_Detail`
- `Light_Conditions`
- `Local_Authority_(District)`
- `Latitude`
- `Longitude`
- `Number_of_Casualties`
- `Number_of_Vehicles`
- `Road_Surface_Conditions`
- `Road_Type`
- `Speed_limit`
- `Time`
- `Urban_or_Rural_Area`
- `Weather_Conditions`
- `Vehicle_Type`

## 🔍 Data Cleaning & Preprocessing

The following data-preparation steps were performed:

- Inspected dataset structure, dimensions, data types, and statistical summaries.
- Examined missing values and duplicate records.
- Removed duplicate records.
- Filled missing values in `Urban_or_Rural_Area` using the mode.
- Dropped `Carriageway_Hazards` because more than 90% of its values were missing.
- Standardized selected vehicle-type text values.
- Converted `Accident Date` into a datetime format.
- Converted the `Hour` column into an integer.
- Investigated numerical distributions and skewness.
- Detected potential outliers using the Interquartile Range (IQR) method.

### Outlier Handling

The IQR method identified unusual values in `Number_of_Casualties`, `Speed_limit`, `Number_of_Vehicles`, and `Latitude`.

These observations were investigated and retained because they were considered potentially valid accident records rather than confirmed data-entry errors.

## 📊 Exploratory Data Analysis

The analysis includes:

- **Categorical Analysis:** Examined distributions of accident-related categories using count plots and proportion charts.
- **Numerical Analysis:** Investigated the distributions of numerical variables using histograms.
- **Skewness Analysis:** Examined the shape of numerical distributions.
- **Outlier Analysis:** Applied the IQR method to identify statistically unusual observations.
- **Correlation Analysis:** Used a correlation heatmap to examine linear relationships between numerical variables.
- **Multivariate Analysis:** Used pair plots to explore relationships among numerical variables.
- **Date and Time Preparation:** Converted the accident date and prepared the hour variable for further analysis.

## 💡 Key Findings

- Accident records are unevenly distributed across junction-control categories, with many observations associated with give-way or uncontrolled junctions and missing or out-of-range classifications.
- The junction-control distribution highlights the importance of examining missing or out-of-range category values before interpreting accident patterns.
- The numerical correlation analysis shows that most examined variables have relatively weak linear relationships.
- The relationship between the number of vehicles and casualties, along with the relationship between latitude and longitude, stands out in the correlation analysis.
- The IQR method identified statistically unusual observations in several numerical columns. These were retained after being considered potentially genuine observations.

## 📈 Business Value

The analysis provides a foundation for:

- Identifying accident patterns across road and environmental conditions.
- Exploring accident characteristics by location and time.
- Supporting further investigation into factors associated with accident severity.
- Helping road safety analysts formulate questions for more detailed analysis.

## 🚀 Future Improvements

- Develop an interactive Power BI dashboard for accident trends and severity analysis.
- Use SQL to investigate accident patterns and answer business questions.
- Conduct more detailed comparisons of accident severity across road, weather, lighting, and junction conditions.
- Investigate missing and out-of-range categorical values more thoroughly.
- Develop and evaluate a machine learning classification model for accident severity prediction.

## 📁 Project Files

- `Accident_Data_Analysis.ipynb` — Python notebook containing data cleaning, preprocessing, EDA, visualizations, and findings.
- `cleaned_Accident.csv` — Cleaned dataset exported by the notebook, if included in the repository.

## 👩‍💻 Author

**Prakruthi**

Aspiring Data Analyst | Python | SQL | Power BI
