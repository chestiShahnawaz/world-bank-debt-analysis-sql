-- =============================================================================
-- 03_advanced_analytics.sql
-- World Bank International Debt — window functions & concentration analysis
-- =============================================================================
-- Database : DuckDB (data/world_bank_debt.duckdb)
-- Table    : international_debt
-- =============================================================================

-- 1. Pareto debt concentration: cumulative share of total debt by country
WITH country_totals AS (
    SELECT
        country_name,
        SUM(debt) AS total_debt
    FROM international_debt
    GROUP BY country_name
),
pareto AS (
    SELECT
        country_name,
        total_debt,
        SUM(total_debt) OVER (ORDER BY total_debt DESC) AS cumulative_debt,
        SUM(total_debt) OVER () AS grand_total
    FROM country_totals
)
SELECT
    country_name,
    total_debt,
    cumulative_debt,
    ROUND(100.0 * cumulative_debt / grand_total, 2) AS cumulative_share_pct
FROM pareto
ORDER BY total_debt DESC;

-- 2. Top debt type by nation (largest indicator per country)
WITH ranked_indicators AS (
    SELECT
        country_name,
        indicator_name,
        debt,
        DENSE_RANK() OVER (
            PARTITION BY country_name
            ORDER BY debt DESC
        ) AS debt_rank
    FROM international_debt
)
SELECT
    country_name,
    indicator_name,
    debt AS top_indicator_debt
FROM ranked_indicators
WHERE debt_rank = 1
ORDER BY top_indicator_debt DESC;

-- 3. Indicator variance: max debt to average debt ratio by indicator
SELECT
    indicator_name,
    MAX(debt) AS max_debt,
    AVG(debt) AS avg_debt,
    ROUND(MAX(debt) / NULLIF(AVG(debt), 0), 4) AS max_to_avg_ratio
FROM international_debt
GROUP BY indicator_name
ORDER BY max_to_avg_ratio DESC;
