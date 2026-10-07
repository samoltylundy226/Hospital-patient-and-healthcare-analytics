# Hospital Patient & Healthcare Analytics

An end-to-end healthcare analytics portfolio project providing data-driven insights into patient admissions, hospital length of stay (LOS), departmental performance, financial metrics, and 30-day patient readmission risk.

---

## 📌 Project Overview

Hospitals and healthcare organizations face significant operational, financial, and clinical challenges. This project demonstrates a production-grade analytics and machine learning pipeline that transforms raw electronic health records (EHR) / admission datasets into actionable clinical and executive intelligence.

By combining structured data engineering, relational SQL modeling, interactive Power BI visualizations, and predictive machine learning models, this project equips healthcare administrators and medical directors with the tools needed to optimize patient care and reduce costly readmissions.

---

## 💼 Business Problem

1. **Unplanned Readmissions (Penalties & Costs):** Unplanned 30-day hospital readmissions impose heavy financial penalties under programs like CMS's Hospital Readmissions Reduction Program (HRRP) and reduce bed availability for urgent cases.
2. **Resource Allocation & Capacity Bottlenecks:** Emergency departments and inpatient units experience unpredictable admission surges, resulting in variable length of stay (LOS) and staffing strain.
3. **Financial Inefficiencies:** Inconsistent billing, varying reimbursement rates across insurance providers, and high cost per admission necessitate granular departmental financial tracking.

---

## 🎯 Project Objectives

- **Develop a robust data ingestion and cleaning workflow** in Python to handle missing clinical values, date parsing, and categorical standardizations.
- **Implement a relational schema and analytical SQL queries** to compute core hospital KPIs (average LOS, admission trends, readmission rates, revenue).
- **Design an interactive Power BI dashboard suite** for executive oversight, departmental deep dives, patient demographics, and financial summaries.
- **Train a supervised machine learning classification model** (e.g., Logistic Regression / Random Forest / XGBoost) to predict 30-day readmission risk for discharged patients.
- **Surface model predictions and risk factors** back into clinical reporting dashboards to support timely post-discharge interventions.

---

## 🛠️ Technology Stack

| Layer | Technology | Purpose |
| :--- | :--- | :--- |
| **Data Processing & ETL** | Python, `pandas`, `numpy` | Data cleaning, type transformations, feature generation |
| **Database & Analytics** | PostgreSQL / SQLite, `SQLAlchemy`, SQL | Relational storage, KPI aggregation, metric computation |
| **Business Intelligence** | Microsoft Power BI (`.pbix`), DAX | Interactive executive, operational, and clinical dashboards |
| **Machine Learning** | `scikit-learn` | Classification algorithms, hyperparameter tuning, ROC/AUC evaluation |
| **Data Visualization** | `matplotlib`, `seaborn` | Statistical visualizations and model performance plots |
| **Environment & Tooling** | Jupyter Notebook, Git | Reproducible exploratory data analysis and version control |

---

## 📁 Repository Structure

```text
Hospital-patient-and-healthcare-analytics/
├── data/
│   └── hospital_admissions_data.csv       # (Placeholder: Raw / cleaned hospital admission dataset)
├── notebooks/
│   └── hospital_analytics.ipynb          # Jupyter notebook for EDA, cleaning & ML modeling
├── sql/
│   └── analysis_queries.sql              # SQL analytical queries and KPI aggregations
├── powerbi/
│   └── Hospital_Healthcare_Analytics.pbix # (Placeholder: Power BI reporting dashboard)
├── screenshots/
│   ├── executive_overview.png            # (Placeholder: Power BI Executive Overview dashboard)
│   ├── patient_analysis.png              # (Placeholder: Patient demographics & admission trends)
│   ├── financial_analysis.png            # (Placeholder: Department revenue & billing analysis)
│   └── department_performance.png        # (Placeholder: LOS & departmental utilization)
├── outputs/
│   └── readmission_model_roc.png         # (Placeholder: Readmission ML ROC curve & metrics)
├── README.md                             # Project documentation & overview
├── requirements.txt                      # Python dependencies
├── LICENSE                               # MIT License
└── .gitignore                            # Git exclusion rules
```

---

## 🔄 Planned Pipeline & Workflow

```text
Raw Healthcare Data (data/hospital_admissions_data.csv)
        ↓
Data Cleaning & ETL (notebooks/hospital_analytics.ipynb)
        ↓
SQL Database Staging & Schema Creation
        ↓
Analytical SQL Queries (sql/analysis_queries.sql)
        ↓
Power BI Operational & Financial Dashboards
        ↓
Feature Engineering & Predictive Modeling (scikit-learn)
        ↓
Readmission Risk Prediction & Evaluation (outputs/readmission_model_roc.png)
        ↓
Power BI Clinical Risk Integration (powerbi/Hospital_Healthcare_Analytics.pbix)
```

---

## 🚀 Installation & Setup

### 1. Prerequisites
- Python 3.9+ installed
- Git installed
- Power BI Desktop (for viewing `.pbix` dashboards)

### 2. Clone the Repository
```bash
git clone https://github.com/samoltylundy226/Hospital-patient-and-healthcare-analytics.git
cd Hospital-patient-and-healthcare-analytics
```

### 3. Create and Activate a Virtual Environment
```bash
# macOS/Linux
python3 -m venv venv
source venv/bin/activate

# Windows (PowerShell)
python -m venv venv
.\venv\Scripts\Activate.ps1
```

### 4. Install Dependencies
```bash
pip install -r requirements.txt
```

### 5. Launch Jupyter Notebook
```bash
jupyter notebook notebooks/hospital_analytics.ipynb
```

---

## 🔮 Future Improvements

- **Real-time Ingestion / Streaming:** Integrate Apache Kafka or cloud pub/sub for real-time admission tracking.
- **Model Explainability (XAI):** Implement SHAP and LIME values to explain individual patient readmission drivers to clinicians.
- **Automated CI/CD Pipeline:** Add GitHub Actions workflows for automated code linting, unit tests, and notebook validation.
- **Containerization:** Provide a `Dockerfile` and `docker-compose.yml` to spin up a local PostgreSQL instance and Jupyter environment effortlessly.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
