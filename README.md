- Análise de Barragens de Mineração no Brasil

Projeto de análise de dados utilizando informações públicas sobre barragens de mineração no Brasil.

O objetivo do projeto é construir um pipeline completo de dados, passando pelas etapas de ingestão, tratamento, armazenamento e visualização em um dashboard interativo.

- Tecnologias Utilizadas

Python

Pandas

MySQL

SQL

Power BI

Git / GitHub

- Estrutura do Projeto
analise-barragens-mineracao-brasil

dados_brutos
│ Barragens_tratado_gold.csv

python
│ conexao_python.py

sql
│ views.sql

dashboard
│ dashboard_barragens.pbix

README.md
- Pipeline de Dados

O projeto segue as seguintes etapas:

1️- Coleta de Dados

Os dados utilizados são provenientes de registros públicos sobre barragens de mineração no Brasil.

Principais atributos disponíveis:

Nome da barragem

Empreendedor

Estado

Município

Latitude

Longitude

Categoria de risco

Dano potencial associado

Método construtivo

2️- Tratamento de Dados
-<img width="1897" height="991" alt="Foto1_ETL" src="https://github.com/user-attachments/assets/2a0b8d55-b882-470c-a77f-3635d96b7012" />
-<img width="1880" height="967" alt="foto2_ETL" src="https://github.com/user-attachments/assets/61c47b8e-5675-4bf5-92f6-7f009b8b9d78" />
-<img width="1905" height="646" alt="Foto3_ETL" src="https://github.com/user-attachments/assets/aa54b21d-6c40-4336-9e5e-6a3b42adec35" />

Utilizando Python e Pandas foram realizadas as seguintes etapas:

limpeza de encoding

tratamento de caracteres especiais

padronização das colunas

preparação dos dados para carga no banco

3️- Carga no Banco de Dados
-<img width="1800" height="879" alt="Foto4_conexao" src="https://github.com/user-attachments/assets/c7fd3912-6140-4e62-99c6-6811da39fb18" />
Os dados tratados são carregados no MySQL utilizando SQLAlchemy.

Exemplo:

df.to_sql(
    "barragens",
    engine,
    if_exists="replace",
    index=False
)
- Camada Analítica

Foram criadas views SQL para facilitar a análise e consumo dos dados.
-<img width="1904" height="1001" alt="Foto5_views_select_power_bi" src="https://github.com/user-attachments/assets/de9b91b1-2026-476f-930a-e6d46061a06e" />

Exemplos:

Barragens por Estado
SELECT
uf,
COUNT(*) as total
FROM barragens
GROUP BY uf;
Barragens por Categoria de Risco
SELECT
categoria_de_risco_-_cri,
COUNT(*) as total
FROM barragens
GROUP BY categoria_de_risco_-_cri;
- Dashboard Power BI

O dashboard foi desenvolvido para facilitar a visualização dos dados e possui três páginas principais.

- Visão Geral
- <img width="1641" height="902" alt="Foto6_PowerBI" src="https://github.com/user-attachments/assets/bee40e80-f0e8-4651-80e8-f94a7fedd8f5" />

Total de barragens

Barragens por estado

Distribuição por empresas

- Análise de Risco
- <img width="1614" height="862" alt="Foto7_PowerBI" src="https://github.com/user-attachments/assets/bd122c65-854d-42d4-9d6c-9297a3c6ae92" />

Categoria de risco

Dano potencial associado

Métodos construtivos

- Mapa
- <img width="1648" height="908" alt="Foto8_powerBI" src="https://github.com/user-attachments/assets/e34fa15f-af24-449e-a152-db3fb80a8dce" />

Distribuição geográfica das barragens

Visualização por latitude e longitude

Classificação por risco

- Objetivo do Projeto

Demonstrar habilidades em:

ETL com Python

Manipulação de dados com Pandas

Modelagem e consultas SQL

Visualização de dados com Power BI

Versionamento de código com Git

- Possíveis Melhorias Futuras

Automatização do pipeline de dados

Atualização automática dos dados

Deploy do dashboard online

Integração com APIs de dados ambientais

- Autor
Lucas Sangiorge
Tel: (31)99491-2856
Email: lucas.sangiorge@gmail.com
Projeto desenvolvido para estudo e construção de portfólio na área de Análise de Dados.
