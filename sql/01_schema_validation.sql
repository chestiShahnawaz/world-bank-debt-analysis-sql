-- =============================================================================
-- 01_schema_validation.sql
-- World Bank International Debt — schema verification queries
-- =============================================================================
-- Database : DuckDB (data/world_bank_debt.duckdb)
-- Table    : international_debt
-- Source   : data/international_debt.csv
--
-- Columns:
--   country_name   VARCHAR  — country display name
--   country_code   VARCHAR  — ISO 3-letter country code
--   indicator_name VARCHAR  — World Bank debt indicator label
--   indicator_code VARCHAR  — World Bank indicator code
--   debt           DOUBLE   — debt amount in current US$
--
-- Run after ingesting the CSV into the international_debt table.
-- =============================================================================

-- 1. Total row count
SELECT COUNT(*) AS total_rows
FROM international_debt;

-- 2. NULL values in debt (should be 0)
SELECT COUNT(*) AS null_debt_count
FROM international_debt
WHERE debt IS NULL;

-- 3. NULL values in country_code (should be 0)
SELECT COUNT(*) AS null_country_code_count
FROM international_debt
WHERE country_code IS NULL;
