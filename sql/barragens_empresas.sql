CREATE VIEW vw_barragens_por_empresa AS
SELECT
    empreendedor,
    COUNT(*) AS total_barragens
FROM vw_barragens_limpa
GROUP BY empreendedor
ORDER BY total_barragens DESC;