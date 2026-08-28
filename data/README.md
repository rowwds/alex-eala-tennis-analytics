# 📊 Data Directory: WTA Match Records

This directory contains the cleaned, match-level dataset used for SQL schema creation, data analysis, and Tableau visualization.

---

## 📄 File Inventory

| File | Description | Source | Status |
| :--- | :--- | :--- | :--- |
| `alex_eala_career_matches.csv` | Full career match log (dates, tournaments, surfaces, scores, outcomes) | [Tennis Abstract](https://www.tennisabstract.com/) | Cleaned & Ready |

---

## 🔍 Data Dictionary (`alex_eala_career_matches.csv`)

| Field Name | Data Type | Description | Example Values |
| :--- | :--- | :--- | :--- |
| `match_date` | Date | Date the match was played | `2026-08-13` |
| `tournament` | String | Name of the tournament event | `Cincinnati`, `Wimbledon` |
| `surface` | String | Court surface type | `Hard`, `Clay`, `Grass` |
| `versus` | String | Raw match summary string (opponent name & seeding) | `(9)Amanda Anisimova [USA] d. (17)Eala` |
| `score` | String | Set-by-set final match scores | `4-6 6-4 6-2`, `6-1 3-0 RET` |
| `results` | String | Match outcome calculated via wildcard string matching | `W`, `L` |

---

## 🧹 Data Transformation Summary (Day 2)
1. **Extraction:** Pulled raw career match logs from Tennis Abstract.
2. **Text Standardization:** Applied non-breaking space replacement (`CHAR(160)`) and trimmed HTML artifacts such as `(ch)`.
3. **Outcome Calculation:** Created `results` column using Excel wildcard evaluation (`=IF(ISNUMBER(SEARCH("*Eala*d.*", Cell)), "W", "L")`).
