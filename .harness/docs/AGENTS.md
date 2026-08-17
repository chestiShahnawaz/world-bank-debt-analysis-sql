# Agent Directives: World Bank Debt Analysis

## Ownership & Git Rules
1. **The user is the project Owner.** Never commit without explicit permission.
2. When a step completes:
   - Stage modified/created files using `git add <files>`.
   - Propose a clear Conventional Commit message.
   - **Ask the user for approval:**
     > "I have staged the following changes: [list files]. Proposed commit message: '[commit message]'. Should I proceed with the commit? (y/n)"
3. Execute `git commit` ONLY after explicit approval (`y` / `yes`). Never run `git push` autonomously.

## Operational Constraints
1. **Zero Data Dumping:** Never print large raw datasets to terminal output (limit samples to `LIMIT 5`).
2. Write full analytical query outputs directly to `outputs/*.md` or `outputs/*.csv`.
3. Save structured SQL queries into `sql/` with header documentation.

## Execution Protocol
1. Read `.harness/STATE.json` -> check `current_step`.
2. Read ONLY the single file mapped to `current_step` in `.harness/docs/`.
3. Execute the task.
4. Prompt the user for Git commit confirmation.
5. Upon confirmation: commit, update `STATE.json`, and exit.