# azure-health-telemetry-pipeline

**Serverless Data Lakehouse on Azure Synapse & ADLS Gen2.**

This project uses T-SQL Serverless Pools to ingest and query health telemetry data, enabling instant ad-hoc analysis while reducing infrastructure costs by ~95%.

![Architecture Diagram](https://github.com/Kartikay77/azure-health-telemetry-pipeline/blob/main/MEDIA/Azure_SQL.png)

## Overview

* **Storage**: Azure Data Lake Storage Gen2 (ADLS Gen2)
* **Compute**: Azure Synapse Analytics (Serverless SQL Pool)
* **Data**: Health telemetry (Heart Disease dataset)
* **Goal**: Perform cost-effective, serverless analysis on raw CSV data without complex ETL pipelines.

## Sample Analysis

The following T-SQL code demonstrates how to query the raw CSV data directly from ADLS using `OPENROWSET`. It includes a basic selection and an aggregation query to analyze cholesterol levels by heart disease status.

```sql
-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK '[https://kartikayazure.dfs.core.windows.net/raw-data/heart.csv](https://kartikayazure.dfs.core.windows.net/raw-data/heart.csv)',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result]

-- "Real" Analysis: Avg Cholesterol by Heart Disease Status
-- SELECT
--     Target AS HeartDiseaseStatus,
--     COUNT(*) AS PatientCount,
--     AVG(Age) AS AvgAge,
--     AVG(Chol) AS AvgCholesterol
-- FROM
--     OPENROWSET(
--         BULK '[https://kartikayazure.dfs.core.windows.net/raw-data/heart.csv](https://kartikayazure.dfs.core.windows.net/raw-data/heart.csv)',
--         FORMAT = 'CSV',
--         PARSER_VERSION = '2.0',
--         HEADER_ROW = TRUE
--     ) AS [result]
-- GROUP BY Target;
```
