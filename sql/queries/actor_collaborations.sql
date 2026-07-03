-- Top 10 actor pairs who have appeared together most frequently
SELECT TOP 10
    a.actor_name AS actor_1,
    b.actor_name AS actor_2,
    COUNT(*) AS movies_together
FROM cast_members AS a
JOIN cast_members AS b
    ON a.movie_id = b.movie_id
    AND a.actor_name < b.actor_name
GROUP BY a.actor_name, b.actor_name
HAVING COUNT(*) > 1
ORDER BY movies_together DESC