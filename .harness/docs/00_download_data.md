# Task 00: Data Acquisition

## Objective
Download the World Bank International Debt dataset into the `data/` directory and commit the initial data asset.

## Instructions
1. Ensure the directory `data/` exists.
2. Download the raw CSV from `config.dataset_url` in `STATE.json` and save to `data/international_debt.csv`.
3. Verify that the file exists and is non-empty.
4. Stage the file: `git add data/international_debt.csv`.
5. Ask the user for confirmation to commit:
   - Proposed message: `chore(data): download world bank international debt dataset`
6. Once confirmed:
   - Execute the git commit.
   - Update `STATE.json` (`history.00_download_data`, set `current_step` to `01_schema_setup`).
   - Exit.