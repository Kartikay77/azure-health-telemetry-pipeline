-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://kartikayazure.dfs.core.windows.net/raw-data/heart.csv',
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
--         BULK 'https://kartikayazure.dfs.core.windows.net/raw-data/heart.csv',
--         FORMAT = 'CSV',
--         PARSER_VERSION = '2.0',
--         HEADER_ROW = TRUE
--     ) AS [result]
-- GROUP BY Target;
