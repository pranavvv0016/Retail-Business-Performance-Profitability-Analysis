# Retail Business Performance & Profitability — Quick Start

This repo contains everything you need to reproduce the project end-to-end quickly.

## Files
- `cleaned_online_retail.csv` — Cleaned data with derived Profit & Product_Category (ready for Tableau)
- `category_profitability.csv` — Category-level profitability summary
- `retail_data.db` — SQLite DB containing the raw → cleaned table `online_retail`
- `sql_used.sql` — SQL you can run inside DB Browser for SQLite
- Notebook/Script (this session) — Re-create the DB and outputs

## What you can do now (fast track)
1. Open **DB Browser for SQLite** → `Open Database…` → choose `retail_data.db`.
2. Go to **Execute SQL** and paste queries from `sql_used.sql` (optional; already applied here).
3. In **Tableau**, connect to `cleaned_online_retail.csv` and build:
   - **Profitability by Category**: `Product_Category` → Rows, `Profit` (SUM) → Columns (bar chart).
   - **Seasonality**: `InvoiceDate` (Month) → Columns, `Revenue` (SUM) → Rows (line chart).
   - **Regional Map**: `Country` → Detail, `Revenue` (SUM) → Color (map).
   - Add filters for `Country` and `Product_Category`.

## Key metric assumptions
- Profit margin assumed at **40%** of revenue.
- `SlowMovingFlag` = 1 if `Quantity < 5` else 0.

## Quick insights
- See `category_profitability.csv` for lowest-profit categories on top.
- Correlation (SlowMoving vs Profit) printed in the run log from this script.

