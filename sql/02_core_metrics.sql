-- =============================================================================
-- 02_core_metrics.sql
-- World Bank International Debt — core exploratory metrics
-- =============================================================================
-- Database : DuckDB (data/world_bank_debt.duckdb)
-- Table    : international_debt
-- =============================================================================

-- 1. Count of distinct countries
SELECT COUNT(DISTINCT country_name) AS distinct_countries
FROM international_debt;

-- 2. Count of distinct debt indicators
SELECT COUNT(DISTINCT indicator_name) AS distinct_indicators
FROM international_debt;

-- 3. Total international debt across all countries
SELECT SUM(debt) AS total_international_debt
FROM international_debt;

-- 4. Country with the highest total debt
SELECT
    country_name,
    SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;

-- 5. Average debt amount across distinct indicators
SELECT AVG(indicator_avg_debt) AS avg_debt_across_indicators
FROM (
    SELECT
        indicator_name,
        AVG(debt) AS indicator_avg_debt
    FROM international_debt
    GROUP BY indicator_name
) AS indicator_averages;

-- 6. Indicator with the highest amount of principal repayments
SELECT
    indicator_name,
    SUM(debt) AS total_principal_repayments
FROM international_debt
WHERE indicator_name LIKE 'Principal repayments%'
GROUP BY indicator_name
ORDER BY total_principal_repayments DESC
LIMIT 1;

-- 7. Most common debt indicator across countries
SELECT
    indicator_name,
    COUNT(DISTINCT country_name) AS country_count
FROM international_debt
GROUP BY indicator_name
ORDER BY country_count DESC, indicator_name
LIMIT 1;
