# 🚦 Road Accidents Data Analysis and Prediction

This project explores and analyzes road accident data with the goal of uncovering key insights and building predictive models for accident severity. It combines data cleaning, visualization, feature engineering, and machine learning to enhance understanding and support safety-related decision-making.

---

## 📊 Project Objectives

- Clean and preprocess real-world road accident datasets.
- Analyze patterns and factors contributing to accidents.
- Build machine learning models to predict:
  - Accident Severity
  - Number of Vehicles Involved
  - Number of Casualties
- Visualize insights through meaningful plots and summary statistics.

---

## 🧾 Dataset Description

The dataset contains features like:

- `Accident Date`, `Time`, `Grid Ref: Easting/Northing`
- `Number of Vehicles`, `Number of Casualties`
- `Road Surface`, `Lighting Conditions`, `Weather Conditions`
- `Casualty Class`, `Casualty Severity`, `Age of Casualty`
- `Vehicle Type`, `Sex of Casualty`, `1st Road Class`

> 📌 Note: The dataset is anonymized and preprocessed for educational purposes.

---

## 📂 Project Structure

```
Road-Accidents-Data-Analysis-and-Prediction/
├── data/                   # Contains the datasets (CSV files)
├── notebooks/              # Jupyter Notebooks for EDA and modeling
├── models/                 # Saved machine learning models (optional)
├── utils/                  # Helper functions and scripts
├── README.md               # Project documentation
└── requirements.txt        # Required packages
```

---

## 📈 Key Techniques Used

- **Exploratory Data Analysis (EDA)**: Matplotlib, Seaborn, Plotly
- **Feature Engineering**: Date/time extraction, encoding, binning
- **Preprocessing**: Handling missing data, label encoding, scaling
- **ML Models**:
  - Logistic Regression
  - Decision Trees
  - Random Forest
  - Gradient Boosting (XGBoost)
- **Model Evaluation**: Accuracy, F1-score, Confusion Matrix

---

## 📌 Notable Findings

- Weather and lighting conditions have a measurable effect on accident severity.
- Certain road classes are more prone to high-casualty accidents.
- Time of day and age of casualty influence severity prediction.

---

## 🚀 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Abdelaziz-Alsayed/Road-Accidents-Data-Analysis-and-Prediction.git
   cd Road-Accidents-Data-Analysis-and-Prediction
   ```

2. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

3. **Run notebooks**:
   Open `notebooks/` and follow the steps in each Jupyter Notebook.

---

## 🧠 Future Improvements

- Use of geospatial visualization (e.g., Folium or GeoPandas).
- Integration of deep learning for time-series accident prediction.
- Interactive dashboard (e.g., Streamlit or Dash).

---

## 👤 Author

**Abdelaziz El Sayed**  
🔗 [LinkedIn](https://www.linkedin.com/in/abdel-aziz-al-sayed-mohamed-98953b2a9) | [GitHub](https://github.com/Abdelaziz-Alsayed)

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
