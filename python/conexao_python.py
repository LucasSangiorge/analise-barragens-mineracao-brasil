import pandas as pd
from sqlalchemy import create_engine

# caminho do csv
caminho = r"C:\Users\lucas\OneDrive\analise-barragens-mineracao-brasil\dados_brutos\Barragens_tratado_gold.csv"

# ler csv
df = pd.read_csv(caminho, encoding="latin1")

# limpar caracteres inválidos
for col in df.select_dtypes(include=["object", "string"]).columns:
    df[col] = (
        df[col]
        .astype(str)
        .str.encode("latin1", errors="ignore")
        .str.decode("utf-8", errors="ignore")
    )

# conexão mysql
engine = create_engine(
    "mysql+pymysql://root:901012@localhost/agencia_nacional_mineracao?charset=utf8mb4"
)

# enviar para mysql
df.to_sql(
    name="barragens",
    con=engine,
    if_exists="replace",
    index=False
)

print("Dados enviados com sucesso!")
print("Total de registros:", len(df))