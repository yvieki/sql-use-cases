SELECT 
    category,
    COUNT(*) AS total_tickets,
    ROUND(AVG(EXTRACT(EPOCH FROM (closed_at - opened_at)) / 3600), 2) AS avg_resolution_hours
FROM tickets
WHERE closed_at IS NOT NULL
GROUP BY category
ORDER BY avg_resolution_hours DESC;