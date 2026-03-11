CREATE VIEW vw_barragens_por_estado AS
SELECT
    uf,
    COUNT(*) AS total_barragens
FROM vw_barragens_limpa
GROUP BY uf
ORDER BY total_barragens DESC;