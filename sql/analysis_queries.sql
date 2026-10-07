-- =============================================================================
-- Hospital Patient & Healthcare Analytics
-- Script: analysis_queries.sql
-- Description: Core SQL analysis queries for hospital admissions, KPIs,
--              length of stay (LOS), readmission rates, and financial performance.
-- =============================================================================

-- -----------------------------------------------------------------------------
-- 1. Table Schema / DDL Reference
-- -----------------------------------------------------------------------------
-- CREATE TABLE IF NOT EXISTS hospital_admissions (
--     admission_id VARCHAR(50) PRIMARY KEY,
--     patient_id VARCHAR(50) NOT NULL,
--     admission_date DATE NOT NULL,
--     discharge_date DATE NOT NULL,
--     admission_type VARCHAR(50),
--     department VARCHAR(100),
--     primary_diagnosis VARCHAR(255),
--     length_of_stay INT,
--     billing_amount NUMERIC(12, 2),
--     insurance_provider VARCHAR(100),
--     readmitted_30_days BOOLEAN
-- );

-- -----------------------------------------------------------------------------
-- 2. Executive KPI Summary
-- -----------------------------------------------------------------------------
-- Total admissions, distinct patients, average LOS, and overall readmission rate
/*
SELECT
    COUNT(DISTINCT admission_id) AS total_admissions,
    COUNT(DISTINCT patient_id) AS total_patients,
    ROUND(AVG(length_of_stay), 2) AS avg_length_of_stay,
    ROUND(SUM(billing_amount), 2) AS total_revenue,
    ROUND(AVG(billing_amount), 2) AS avg_cost_per_admission,
    ROUND(100.0 * COUNT(CASE WHEN readmitted_30_days = TRUE THEN 1 END) / COUNT(*), 2) AS readmission_rate_pct
FROM hospital_admissions;
*/

-- -----------------------------------------------------------------------------
-- 3. Department Performance & Patient Volume
-- -----------------------------------------------------------------------------
/*
SELECT
    department,
    COUNT(admission_id) AS total_admissions,
    ROUND(AVG(length_of_stay), 2) AS avg_los_days,
    ROUND(AVG(billing_amount), 2) AS avg_billing,
    ROUND(100.0 * COUNT(CASE WHEN readmitted_30_days = TRUE THEN 1 END) / COUNT(*), 2) AS dept_readmission_rate_pct
FROM hospital_admissions
GROUP BY department
ORDER BY total_admissions DESC;
*/

-- -----------------------------------------------------------------------------
-- 4. 30-Day Readmission Analysis by Diagnosis
-- -----------------------------------------------------------------------------
/*
SELECT
    primary_diagnosis,
    COUNT(*) AS total_cases,
    COUNT(CASE WHEN readmitted_30_days = TRUE THEN 1 END) AS readmitted_cases,
    ROUND(100.0 * COUNT(CASE WHEN readmitted_30_days = TRUE THEN 1 END) / COUNT(*), 2) AS readmission_rate_pct
FROM hospital_admissions
GROUP BY primary_diagnosis
HAVING COUNT(*) >= 10
ORDER BY readmission_rate_pct DESC;
*/

-- -----------------------------------------------------------------------------
-- 5. Financial & Insurance Breakdown
-- -----------------------------------------------------------------------------
/*
SELECT
    insurance_provider,
    COUNT(admission_id) AS total_claims,
    ROUND(SUM(billing_amount), 2) AS total_billed_amount,
    ROUND(AVG(billing_amount), 2) AS avg_billed_per_patient
FROM hospital_admissions
GROUP BY insurance_provider
ORDER BY total_billed_amount DESC;
*/
