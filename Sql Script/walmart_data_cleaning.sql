-- ============================================================
-- WALMART SALES DATA - ORACLE SQL CLEANING SCRIPT
-- Tables: FEATURES_DATA, SALES_DATA, STORE_DATASET
-- ============================================================


-- ============================================================
-- STEP 1: INSPECT RAW DATA
-- ============================================================

-- Check row counts
SELECT 'FEATURES_DATA' AS TABLE_NAME, COUNT(*) AS ROW_COUNT FROM FEATURES_DATA
UNION ALL
SELECT 'SALES_DATA',                   COUNT(*)               FROM SALES_DATA
UNION ALL
SELECT 'STORE_DATASET',                COUNT(*)               FROM STORE_DATASET;

-- Check nulls in FEATURES_DATA
SELECT
    SUM(CASE WHEN MARKDOWN1    IS NULL THEN 1 ELSE 0 END) AS NULL_MARKDOWN1,
    SUM(CASE WHEN MARKDOWN2    IS NULL THEN 1 ELSE 0 END) AS NULL_MARKDOWN2,
    SUM(CASE WHEN MARKDOWN3    IS NULL THEN 1 ELSE 0 END) AS NULL_MARKDOWN3,
    SUM(CASE WHEN MARKDOWN4    IS NULL THEN 1 ELSE 0 END) AS NULL_MARKDOWN4,
    SUM(CASE WHEN MARKDOWN5    IS NULL THEN 1 ELSE 0 END) AS NULL_MARKDOWN5,
    SUM(CASE WHEN CPI          IS NULL THEN 1 ELSE 0 END) AS NULL_CPI,
    SUM(CASE WHEN UNEMPLOYMENT IS NULL THEN 1 ELSE 0 END) AS NULL_UNEMPLOYMENT
FROM FEATURES_DATA;

-- Check negative sales in SALES_DATA
SELECT COUNT(*) AS NEGATIVE_SALES_COUNT
FROM SALES_DATA
WHERE WEEKLY_SALES < 0;

-- Check duplicates in SALES_DATA
SELECT STORE, DEPT, TXN_SALES_DATE, COUNT(*) AS CNT
FROM SALES_DATA
GROUP BY STORE, DEPT, TXN_SALES_DATE
HAVING COUNT(*) > 1;


-- ============================================================
-- STEP 2: CLEAN FEATURES_DATA
-- ============================================================

-- 2a. Fill MarkDown NULLs with 0
--     (NULL = no markdown/promotion event that week)
UPDATE FEATURES_DATA SET MARKDOWN1 = 0 WHERE MARKDOWN1 IS NULL;
UPDATE FEATURES_DATA SET MARKDOWN2 = 0 WHERE MARKDOWN2 IS NULL;
UPDATE FEATURES_DATA SET MARKDOWN3 = 0 WHERE MARKDOWN3 IS NULL;
UPDATE FEATURES_DATA SET MARKDOWN4 = 0 WHERE MARKDOWN4 IS NULL;
UPDATE FEATURES_DATA SET MARKDOWN5 = 0 WHERE MARKDOWN5 IS NULL;

COMMIT;

-- 2b. Fill CPI and Unemployment NULLs
--     using the average value per store
UPDATE FEATURES_DATA F
SET CPI = (
    SELECT ROUND(AVG(CPI), 6)
    FROM FEATURES_DATA
    WHERE STORE = F.STORE
    AND CPI IS NOT NULL
)
WHERE CPI IS NULL;

UPDATE FEATURES_DATA F
SET UNEMPLOYMENT = (
    SELECT ROUND(AVG(UNEMPLOYMENT), 3)
    FROM FEATURES_DATA
    WHERE STORE = F.STORE
    AND UNEMPLOYMENT IS NOT NULL
)
WHERE UNEMPLOYMENT IS NULL;

COMMIT;

-- Verify FEATURES_DATA is clean
SELECT
    SUM(CASE WHEN MARKDOWN1    IS NULL THEN 1 ELSE 0 END) AS NULL_MD1,
    SUM(CASE WHEN MARKDOWN2    IS NULL THEN 1 ELSE 0 END) AS NULL_MD2,
    SUM(CASE WHEN CPI          IS NULL THEN 1 ELSE 0 END) AS NULL_CPI,
    SUM(CASE WHEN UNEMPLOYMENT IS NULL THEN 1 ELSE 0 END) AS NULL_UNEMP
FROM FEATURES_DATA;
-- All should return 0


-- ============================================================
-- STEP 3: CLEAN SALES_DATA
-- ============================================================

-- 3a. Handle negative Weekly_Sales — flag them first
ALTER TABLE SALES_DATA ADD (IS_RETURN VARCHAR2(5) DEFAULT 'FALSE');

UPDATE SALES_DATA
SET IS_RETURN = 'TRUE'
WHERE WEEKLY_SALES < 0;

-- Set negative sales to 0
UPDATE SALES_DATA
SET WEEKLY_SALES = 0
WHERE WEEKLY_SALES < 0;

COMMIT;

-- Verify
SELECT COUNT(*) AS STILL_NEGATIVE FROM SALES_DATA WHERE WEEKLY_SALES < 0;
-- Should return 0


-- ============================================================
-- STEP 4: CLEAN STORE_DATASET
-- ============================================================

-- Trim whitespace and standardize TYPE column
UPDATE STORE_DATASET
SET TYPE = TRIM(UPPER(TYPE));

COMMIT;

-- Confirm distinct store types
SELECT DISTINCT TYPE FROM STORE_DATASET ORDER BY TYPE;


-- ============================================================
-- STEP 5: CREATE FINAL MERGED CLEAN TABLE
-- ============================================================

CREATE TABLE WALMART_CLEAN AS
SELECT
    S.STORE,
    S.DEPT,
    S.TXN_SALES_DATE                                        AS SALE_DATE,
    TO_CHAR(S.TXN_SALES_DATE, 'YYYY')                       AS YEAR,
    TO_CHAR(S.TXN_SALES_DATE, 'MM')                         AS MONTH,
    TO_CHAR(S.TXN_SALES_DATE, 'Q')                          AS QUARTER,
    TO_CHAR(S.TXN_SALES_DATE, 'IW')                         AS WEEK_NUMBER,
    S.WEEKLY_SALES,
    S.ISHOLIDAY                                             AS IS_HOLIDAY,
    S.IS_RETURN,
    ST.TYPE                                                 AS STORE_TYPE,
    ST.STORE_SIZE,
    F.TEMPERATURE,
    F.FUEL_PRICE,
    F.MARKDOWN1,
    F.MARKDOWN2,
    F.MARKDOWN3,
    F.MARKDOWN4,
    F.MARKDOWN5,
    F.CPI,
    F.UNEMPLOYMENT,
    (F.MARKDOWN1 + F.MARKDOWN2 + F.MARKDOWN3 + F.MARKDOWN4 + F.MARKDOWN5) AS TOTAL_MARKDOWN
FROM SALES_DATA       S
JOIN STORE_DATASET    ST ON S.STORE = ST.STORE
JOIN FEATURES_DATA    F  ON S.STORE = F.STORE
                         AND S.TXN_SALES_DATE = F.SALES_DATE;

-- Final row count check
SELECT COUNT(*) AS FINAL_ROWS FROM WALMART_CLEAN;

-- Preview final clean table
SELECT * FROM WALMART_CLEAN WHERE ROWNUM <= 10;
