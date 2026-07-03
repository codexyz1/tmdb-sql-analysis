-- Most profitable movies (revenue - budget), excluding missing data
SELECT TOP 50
    title,
    budget,
    revenue,
    (revenue - budget) AS profit
FROM dbo.movies
WHERE budget > 0 AND revenue > 0
ORDER BY profit DESC