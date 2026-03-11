CREATE VIEW vw_barragens_limpa AS
SELECT
    id,
    nome,
    empreendedor,
    uf,
    municipio,
    latitude,
    longitude,
    `categoria_de_risco_-_cri` AS categoria_risco,
    `dano_potencial_associado_-_dpa` AS dano_potencial,
    metodo_construtivo_da_back_up_dam
FROM barragens;