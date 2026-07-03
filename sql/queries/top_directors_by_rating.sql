-- Directors with the highest average rating (minimum 3 films)
SELECT TOP 50
    c.name AS director,
    COUNT(DISTINCT c.movie_id) AS film_count,
    AVG(m.vote_average) AS avg_rating
FROM crew_members c
JOIN dbo.movies m ON c.movie_id = m.id
WHERE c.job = 'Director'
GROUP BY c.name
HAVING COUNT(DISTINCT c.movie_id) >= 3
ORDER BY avg_rating DESC