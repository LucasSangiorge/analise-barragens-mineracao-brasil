CREATE VIEW vw_barragens_por_municipio AS
SELECT
    municipio,
    uf,
    COUNT(*) AS total_barragens
FROM barragens
GROUP BY municipio, uf
ORDER BY total_barragens DESC;