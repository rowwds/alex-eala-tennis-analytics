# 🎾 Alex Eala: WTA Career Performance & Match Analytics

An end-to-end data analytics project evaluating professional tennis performance metrics for Alex Eala (Filipina WTA tennis star). This project explores win probabilities across court surfaces, tournament tier progression, and match-level momentum indicators.

---

## 📌 Project Overview
* **Objective:** Analyze career match data to determine performance drivers across surface types, tournament levels (ITF W25/W100 vs. WTA 250/500/1000/Grand Slams), and first-set momentum outcomes.
* **Data Source:** [Tennis Abstract](https://www.tennisabstract.com/) (Career match-by-match results, scores, surfaces, and tournament tiers)
* **Tech Stack:** 
  * **Data Cleaning & Extraction:** Excel (HTML table ingestion, text manipulation formulas, calculated outcome fields)
  * **Database & Querying:** MySQL Workbench (Relational schema design, aggregations, window functions)
  * **Visualization:** Tableau Public (Interactive sports performance dashboard)
  * **Documentation:** GitHub

---

## ❓ Analytical Questions
1. **Surface Efficiency:** How does her win percentage differ across Hard, Clay, and Grass courts?
2. **First-Set Conversion:** What is her match-win probability when winning Set 1 versus when dropping Set 1?
3. **Tier Progression & Scaling:** How has her match volume and win percentage shifted as she transitioned from ITF circuit events to main-draw WTA Tour events?

---

## 📂 Data Architecture
The clean dataset (`alex_eala_career_matches.csv`) stores career match entries with the following schema:
* `match_date` (DATE): Date of the match (`YYYY-MM-DD`)
* `tournament` (VARCHAR): Event name
* `surface` (VARCHAR): Court surface (`Hard`, `Clay`, `Grass`)
* `round` (VARCHAR): Tournament round (`R128`, `R64`, `QF`, `SF`, `F`)
* `opponent` (VARCHAR): Opponent name
* `result` (VARCHAR): Match outcome (`W` / `L`)
* `score` (VARCHAR): Full set score string

---

## 🗺️ Project Roadmap
* [x] **Day 1:** Project scope definition, core analytical questions, and repository setup.
* [x] **Day 2:** Data extraction from Tennis Abstract, column cleaning, and Excel transformations.
* [ ] **Day 3:** MySQL database schema modeling, CSV table import, and SQL script development.
* [ ] **Day 4:** Building and publishing the interactive Tableau performance dashboard.
