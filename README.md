# 🎾 Alex Eala: WTA Career Performance & Match Analytics

An end-to-end data analytics project evaluating professional tennis performance metrics for Alex Eala (Filipina WTA tennis star). This project explores win probabilities across court surfaces, tournament tier progression, and match-level momentum indicators.

---

## 📌 Project Overview
* **Objective:** Analyze career match data to determine performance drivers across surface types, tournament levels (ITF W25/W100 vs. WTA 250/500/1000/Grand Slams), and first-set momentum outcomes.
* **Tech Stack:** 
  * **Data Wrangling:** Excel (CSV, Power Query, calculated fields)
  * **Database & Querying:** MySQL Workbench (Multi-table joins, aggregations, window functions)
  * **Visualization:** Tableau Public (Interactive sports performance dashboard)
  * **Documentation:** GitHub

---

## ❓ Analytical Questions
1. **Surface Efficiency:** How does her win percentage differ across Hard, Clay, and Grass courts?
2. **First-Set Conversion:** What is her match-win probability when winning Set 1 versus when dropping Set 1?
3. **Tier Progression & Scaling:** How has her match volume and win percentage shifted as she transitioned from ITF circuit events to main-draw WTA Tour events?

---

## 📂 Data Architecture
The dataset is structured across relational tables containing match logs:
* `matches`: `match_id`, `date`, `tournament_id`, `surface`, `round`, `opponent_id`, `result` (W/L), `score`
* `tournaments`: `tournament_id`, `name`, `tier` (ITF W25, WTA 250, WTA 500, Grand Slam), `location`
* `opponents`: `opponent_id`, `name`, `rank_at_time_of_match`, `country`

---

## 🗺️ Project Roadmap
* [x] **Day 1:** Project scope definition, core questions, and repository setup.
* [ ] **Day 2:** Data cleaning, table normalization, and CSV preparation.
* [ ] **Day 3:** MySQL schema design, data import, and script development.
* [ ] **Day 4:** Building and publishing the interactive Tableau Dashboard.
