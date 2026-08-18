# World Bank International Debt Analysis (SQL)

Exploratory and advanced SQL analysis of global external debt statistics from the World Bank, covering 124 countries and 25 debt indicators.

## Executive Summary

**Problem:** International debt is spread unevenly across countries and indicator types. Understanding where debt concentrates, which obligations dominate per nation, and how indicators vary in scale is essential for portfolio-level risk assessment.

**Top 3 takeaways:**

1. **Global scale:** The dataset spans **124 countries**, **25 indicators**, and roughly **$3.08 trillion** in recorded debt flows and balances.
2. **Concentration:** Debt is heavily concentrated — the **top 10 countries/regions account for ~62%** of total debt, with **China** alone representing **9.3%** of the global total.
3. **Dominant flows:** **Principal repayments on long-term external debt** are the largest single indicator category (~$732B aggregate), and **interest payments** appear in every country in the dataset.

---

## Schema & Tech Stack

| Component | Detail |
| --- | --- |
| **Database** | [DuckDB](https://duckdb.org/) (embedded analytical engine) |
| **Source data** | `data/international_debt.csv` |
| **Database file** | `data/world_bank_debt.duckdb` (generated locally) |
| **Target table** | `international_debt` |

### Table: `international_debt`

| Column | Type | Description |
| --- | --- | --- |
| `country_name` | VARCHAR | Country or regional aggregate name |
| `country_code` | VARCHAR | ISO 3-letter country code |
| `indicator_name` | VARCHAR | World Bank debt indicator label |
| `indicator_code` | VARCHAR | World Bank indicator code (e.g. `DT.AMT.DLXF.CD`) |
| `debt` | DOUBLE | Debt amount in current US$ |

**Data quality:** 2,357 rows ingested with **zero NULL values** in `debt` and `country_code`.

---

## Key Findings

### Core Metrics

| Metric | Value |
| --- | --- |
| Distinct countries | 124 |
| Distinct indicators | 25 |
| Total international debt | $3,079,734,487,675.79 |
| Highest-debt entity | China — $285,793,494,734.20 |
| Avg debt per indicator type | ~$1.19B |
| Top principal repayments indicator | Principal repayments on external debt, long-term — $732.2B |
| Most common indicator | Interest payments on external debt, long-term (124 countries) |

### Pareto Concentration (Top 10)

| Country / Region | Total Debt (US$) | Cumulative Share |
| --- | --- | --- |
| China | 285.8B | 9.28% |
| Brazil | 280.6B | 18.39% |
| South Asia | 247.6B | 26.43% |
| Least developed countries (UN) | 212.9B | 33.34% |
| Russian Federation | 191.3B | 39.56% |
| IDA only | 179.0B | 45.37% |
| Turkey | 151.1B | 50.28% |
| India | 133.6B | 54.62% |
| Mexico | 124.6B | 58.66% |
| Indonesia | 113.4B | 62.34% |

Roughly **two-thirds of global debt** is attributable to just 10 entities.

### Top Debt Type by Nation (Sample)

| Country | Dominant Indicator | Amount (US$) |
| --- | --- | --- |
| China | Principal repayments on external debt, long-term | 96.2B |
| Brazil | Principal repayments on external debt, long-term | 90.0B |
| Russian Federation | Principal repayments on external debt, long-term | 66.6B |
| Turkey | Principal repayments on external debt, long-term | 51.6B |
| India | Principal repayments on external debt, long-term | 31.9B |

Principal repayments dominate the largest economies; regional aggregates often peak on disbursement indicators.

### Indicator Variance (Highest Max-to-Avg Ratios)

| Indicator | Max / Avg Ratio |
| --- | --- |
| PPG, other private creditors (AMT) | 47.02 |
| PPG, commercial banks (AMT) | 30.04 |
| PPG, commercial banks (INT) | 27.00 |
| PPG, private creditors (AMT) | 24.17 |
| PPG, multilateral (DIS) | 19.50 |

High ratios signal indicators where a few countries hold outsized balances relative to the global average — useful for spotting concentration risk within a single debt category.

Full result tables: [`outputs/02_core_metrics.md`](outputs/02_core_metrics.md) · [`outputs/03_advanced_analytics.md`](outputs/03_advanced_analytics.md)

---

## SQL Techniques Demonstrated

| Technique | Where Used | Purpose |
| --- | --- | --- |
| **Aggregations** (`COUNT`, `SUM`, `AVG`, `GROUP BY`) | `sql/02_core_metrics.sql` | Country counts, totals, rankings |
| **CTEs** (`WITH ... AS`) | `sql/03_advanced_analytics.sql` | Pareto ladder and ranked indicator pipelines |
| **`SUM() OVER (ORDER BY ...)`** | `sql/03_advanced_analytics.sql` | Running cumulative debt and concentration % |
| **`DENSE_RANK() OVER (PARTITION BY ...)`** | `sql/03_advanced_analytics.sql` | Top debt indicator per country |
| **Ratio analytics** (`MAX / AVG`) | `sql/03_advanced_analytics.sql` | Indicator-level variance and skew |
| **Data validation** | `sql/01_schema_validation.sql` | Row counts and NULL checks post-ingestion |

---

## How to Run

### Prerequisites

- Python 3.10+
- DuckDB Python package: `pip install duckdb`

### 1. Ingest the CSV into DuckDB

```python
import duckdb

con = duckdb.connect("data/world_bank_debt.duckdb")
con.execute("DROP TABLE IF EXISTS international_debt")
con.execute("""
CREATE TABLE international_debt (
    country_name   VARCHAR,
    country_code   VARCHAR,
    indicator_name VARCHAR,
    indicator_code VARCHAR,
    debt           DOUBLE
)
""")
con.execute("""
COPY international_debt
FROM 'data/international_debt.csv'
(HEADER TRUE, DELIMITER ',')
""")
con.close()
```

### 2. Run validation queries

```bash
duckdb data/world_bank_debt.duckdb < sql/01_schema_validation.sql
```

Or open any `.sql` file in the DuckDB CLI / Python and execute query blocks individually.

### 3. Execute analysis scripts

| Script | Output |
| --- | --- |
| `sql/01_schema_validation.sql` | Row count & NULL checks |
| `sql/02_core_metrics.sql` | 7 core exploratory metrics → see `outputs/02_core_metrics.md` |
| `sql/03_advanced_analytics.sql` | Window functions & concentration → see `outputs/03_advanced_analytics.md` |

### Project layout

```
data/
  international_debt.csv      # Raw World Bank dataset
  world_bank_debt.duckdb      # Local DuckDB database (generated)
sql/
  01_schema_validation.sql
  02_core_metrics.sql
  03_advanced_analytics.sql
outputs/
  02_core_metrics.md
  03_advanced_analytics.md
```

---

## Author

Chesti — SQL portfolio case study using World Bank international debt data.
