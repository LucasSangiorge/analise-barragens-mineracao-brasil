CREATE VIEW vw_barragens_por_risco AS
SELECT
    categoria_risco,
    COUNT(*) AS total
FROM vw_barragens_limpa
GROUP BY categoria_risco;