CREATE TABLE barragens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_barragem VARCHAR(200),
    municipio VARCHAR(150),
    estado VARCHAR(2),
    empresa VARCHAR(200),
    mineral_principal VARCHAR(100),
    metodo_construtivo VARCHAR(100),
    categoria_risco VARCHAR(50),
    dano_potencial VARCHAR(50),
    volume_m3 DECIMAL(15,2)
);