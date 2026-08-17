# Task 01: Database Schema & Ingestion

## Objective
Ingest `data/international_debt.csv` into a local analytical database (DuckDB / SQLite) and validate row integrity.

## Schema
- `country_name` (VARCHAR)
- `country_code` (VARCHAR)
- `indicator_name` (VARCHAR)
- `indicator_code` (VARCHAR)
- `debt` (NUMERIC / DOUBLE)

## Instructions
1. Ingest `data/international_debt.csv` into the local database table `international_debt`.
2. Run validation checks:
   - Total row count (`COUNT(*)`).
   - Check for NULL values in `debt` and `country_code`.
3. Save the schema verification query to `sql/01_schema_validation.sql`.
4. Stage changes (`git add sql/01_schema_validation.sql .harness/STATE.json`).
5. Ask user for commit approval with message: `feat(db): set up international debt schema and ingest raw data`.
6. Upon approval, commit, update `STATE.json` (`current_step` -> `02_core_queries`), and exit.