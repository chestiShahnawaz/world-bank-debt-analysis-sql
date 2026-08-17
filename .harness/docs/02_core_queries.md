# Task 02: Core Exploratory SQL Queries

## Objective
Write and execute the 7 fundamental debt metrics queries and export markdown tables.

## Analysis Checklist
1. Count of distinct countries.
2. Count of distinct debt indicators.
3. Total international debt across all countries.
4. Country with the highest total debt.
5. Average debt amount across distinct indicators.
6. Indicator with the highest amount of principal repayments.
7. Most common debt indicator across countries.

## Instructions
1. Write the clean SQL script to `sql/02_core_metrics.sql`.
2. Execute the queries and save output summary tables to `outputs/02_core_metrics.md`.
3. Stage files (`git add sql/02_core_metrics.sql outputs/02_core_metrics.md .harness/STATE.json`).
4. Ask user for commit approval with message: `feat(sql): add core debt analysis queries and summary metrics`.
5. Upon approval, commit, update `STATE.json` (`current_step` -> `03_deep_dive_sql`), and exit.