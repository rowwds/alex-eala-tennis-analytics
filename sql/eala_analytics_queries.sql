-- Surface Efficiency (Win % by Surface)
SELECT 
    surface,
    COUNT(*) AS total_matches,
    SUM(CASE WHEN results = 'W' THEN 1 ELSE 0 END) AS wins,
    SUM(CASE WHEN results = 'L' THEN 1 ELSE 0 END) AS losses,
    ROUND(SUM(CASE WHEN results = 'W' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS win_percentage
FROM career_matches
WHERE surface IN ('Hard', 'Clay', 'Grass')
GROUP BY surface
ORDER BY win_percentage DESC;
-- First-Set Conversion (Momentum Analysis)
WITH set_outcomes AS (
    SELECT 
        results,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(score, ' ', 1), '-', 1) AS UNSIGNED) AS eala_set1_games,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(score, ' ', 1), '-', -1) AS UNSIGNED) AS opp_set1_games
    FROM career_matches
    WHERE score LIKE '%-%'
)
SELECT 
    CASE 
        WHEN eala_set1_games > opp_set1_games THEN 'Won Set 1'
        ELSE 'Lost Set 1'
    END AS first_set_status,
    COUNT(*) AS total_matches,
    SUM(CASE WHEN results = 'W' THEN 1 ELSE 0 END) AS match_wins,
    ROUND(SUM(CASE WHEN results = 'W' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_win_pct
FROM set_outcomes
GROUP BY first_set_status;
-- Progression & Yearly Win Rates
SELECT 
    YEAR(match_date) AS match_year,
    COUNT(*) AS total_matches,
    SUM(CASE WHEN results = 'W' THEN 1 ELSE 0 END) AS total_wins,
    ROUND(SUM(CASE WHEN results = 'W' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS yearly_win_pct
FROM career_matches
GROUP BY YEAR(match_date)
ORDER BY match_year ASC;