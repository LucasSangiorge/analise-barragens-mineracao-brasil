CREATE VIEW vw_barragens_por_dano_potencial AS
SELECT
    dano_potencial,
    COUNT(*) AS total
FROM vw_barragens_limpa
GROUP BY dano_potencial;