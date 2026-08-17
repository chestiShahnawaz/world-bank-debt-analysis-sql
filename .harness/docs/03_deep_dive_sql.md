# Task 03: Advanced Analytical SQL

## Objective
Perform portfolio-grade window function analysis, rankings, and debt concentration calculations.

## Analysis Checklist
1. **Pareto Debt Concentration:** Cumulative share of total debt per country using window functions (`SUM() OVER (ORDER BY debt DESC)`).
2. **Top Debt Type by Nation:** Identify the single largest debt indicator per country using `DENSE_RANK() OVER (PARTITION BY country_name ORDER BY debt DESC)`.
3. **Indicator Variance:** Ratio of maximum debt to average debt across indicators.

## Instructions
1. Save the advanced queries to `sql/03_advanced_analytics.sql`.
2. Save analysis output tables to `outputs/03_advanced_analytics.md`.
3. Stage files (`git add sql/03_advanced_analytics.sql outputs/03_advanced_analytics.md .harness/STATE.json`).
4. Ask user for commit approval with message: `feat(sql): implement window functions and debt concentration analysis`.
5. Upon approval, commit, update `STATE.json` (`current_step` -> `04_case_study`), and exit.