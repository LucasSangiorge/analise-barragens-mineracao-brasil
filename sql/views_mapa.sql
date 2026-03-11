CREATE VIEW vw_mapa_barragens AS
SELECT
    nome,
    municipio,
    uf,
    latitude,
    longitude,
    `categoria_de_risco_-_cri` AS categoria_risco,
    `dano_potencial_associado_-_dpa` AS dano_potencial,
    empreendedor
FROM barragens;