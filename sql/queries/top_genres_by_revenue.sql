-- Top 10 genres by average revenue
SELECT TOP 10
    g.name AS genre,
    COUNT(DISTINCT g.movie_id) AS movie_count,
    AVG(m.revenue) AS avg_revenue
FROM genres AS g
JOIN dbo.movies AS m ON g.movie_id = m.id
WHERE m.revenue > 0
GROUP BY g.name
ORDER BY avg_revenue DESC