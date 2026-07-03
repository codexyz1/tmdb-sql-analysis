-- Average budget and revenue trend by release year
SELECT
   YEAR(release_date) AS release_year,
   AVG(budget) AS avg_budget,
   AVG(revenue) AS avg_revenue
FROM dbo.movies
WHERE release_date IS NOT NULL
   AND budget > 1000 AND revenue > 1000
GROUP BY YEAR(release_date)
ORDER BY release_year